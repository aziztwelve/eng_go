-- Track: B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('48422419-7a86-510a-8842-4cc8426b0080', 'B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS', 'Рабочие проблемы, решения и выбор', 'Развивайте практический английский уровня B1 для работы по теме «Рабочие проблемы, решения и выбор».', '{"en":"Workplace Problems, Decisions and Solutions","ru":"Рабочие проблемы, решения и выбор"}'::jsonb, '{"en":"Develop practical B1 workplace English for workplace problems, decisions and solutions.","ru":"Развивайте практический английский уровня B1 для работы по теме «Рабочие проблемы, решения и выбор»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Analysing a Problem","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('770173b7-d0b7-5cee-937e-6807bb53e679', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W01","left":"root cause","right":"основная причина"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W02","left":"option","right":"вариант"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W03","left":"consequence","right":"последствие"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W04","left":"practical","right":"практичный"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W05","left":"compromise","right":"компромисс"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W06","left":"implement","right":"внедрять"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W07","left":"evaluate","right":"оценивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04f187eb-dad4-52ff-8bb7-c9a5b9dd0cde', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W08","is_correct":true,"text":"Before choosing an option, we need to identify the root cause rather than treat only the immediate symptom."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef9ba2c3-74e9-5fde-a0b9-c1b2c73bf6db', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before choosing an option, we need to identify the root cause rather than treat only the immediate symptom.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед выбором варианта нам нужно определить основную причину, а не устранять только непосредственный симптом.","target_language":"en","word_bank":["Before","choosing","an","option,","we","need","to","identify","the","root","cause","rather","than","treat","only","the","immediate","symptom."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('564f123b-f083-520b-93d8-42decb29c98f', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"root cause","instruction":"Выберите подходящее слово.","options":["root cause","practical","implement"],"sentence_template":"Before choosing an option, we need to identify the ___ rather than treat only the immediate symptom."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72a11d44-1447-5817-abe7-d501760b736f', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","choosing","an","option,","we","need","to","identify","the","root","cause","rather","than","treat","only","the","immediate","symptom."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["symptom.","immediate","the","only","treat","than","rather","cause","root","the","identify","to","need","we","option,","an","choosing","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('628dc792-941c-5c77-8d7b-a95fc524db43', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before choosing an option, we need to identify the root cause rather than treat only the immediate symptom. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61e63bda-d2ce-5bab-abdd-cbccb142a685', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before choosing an option, we need to identify the root cause rather than treat only the immediate symptom. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Перед выбором варианта нам нужно определить основную причину, а не устранять только непосредственный симптом. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80c2e553-94bd-5794-a803-e5f507c1ff3f', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Before choosing an option, we need to identify the root cause rather than treat only the immediate symptom.","translation":"Перед выбором варианта нам нужно определить основную причину, а не устранять только непосредственный симптом.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Analysing a Problem"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e41bb73-9c73-5428-8e18-181beb8de7ba', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“root cause” means the fundamental reason for a problem.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W11","is_correct":true,"text":"the fundamental reason for a problem"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W12","is_correct":false,"text":"one possible choice"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W13","is_correct":false,"text":"a result of an action"}],"word":"root cause"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb8469cc-996e-5fd8-9813-3951cd77320d', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before choosing an option, we need to identify the root cause rather than treat only the immediate symptom.","explanation":"The missing workplace expression is “root cause”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"root cause","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W14","is_correct":true},{"audio_text":"consequence","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W15","is_correct":false},{"audio_text":"compromise","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W16","is_correct":false}],"sentence_template":"Before choosing an option, we need to identify the ___ rather than treat only the immediate symptom."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('939854f6-8ecf-52c0-8be8-9713bedd952f', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"root cause","explanation":"The sentence requires “root cause” to communicate the intended workplace meaning.","hint_prefix":"roo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before choosing an option, we need to identify the ___ rather than treat only the immediate symptom."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50caa72b-e2c3-5a8e-89eb-115875740942', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"root cause","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W17","text":"root cause"},{"audio_text":"option","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W18","text":"option"},{"audio_text":"consequence","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W19","text":"consequence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c10c4e21-d744-54db-b30d-3afaa703ebff', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Analysing a Problem”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W20","is_correct":true,"text":"Before choosing an option, we need to identify the root cause rather than treat only the immediate symptom."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('48422419-7a86-510a-8842-4cc8426b0080', '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0928d0b4-4209-5533-b8d1-200854410eae', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Comparing Solutions","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5df4bb06-867c-5f3e-b2ba-b8c88161c088', '0928d0b4-4209-5533-b8d1-200854410eae', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W01","left":"root cause","right":"основная причина"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W02","left":"option","right":"вариант"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W03","left":"consequence","right":"последствие"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W04","left":"practical","right":"практичный"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W05","left":"compromise","right":"компромисс"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W06","left":"implement","right":"внедрять"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W07","left":"evaluate","right":"оценивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('563df240-f390-5ca2-a403-51fa98e40848', '0928d0b4-4209-5533-b8d1-200854410eae', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W08","is_correct":true,"text":"The most practical solution has some negative consequences, but it avoids a much longer delay."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a21a543-4b4e-548a-b66b-5017ae0f82f1', '0928d0b4-4209-5533-b8d1-200854410eae', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The most practical solution has some negative consequences, but it avoids a much longer delay.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Наиболее практичное решение имеет некоторые негативные последствия, но позволяет избежать гораздо более длительной задержки.","target_language":"en","word_bank":["The","most","practical","solution","has","some","negative","consequences,","but","it","avoids","a","much","longer","delay."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b343eb8-1048-51b2-b6ec-8f6d416a4bc6', '0928d0b4-4209-5533-b8d1-200854410eae', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"option","instruction":"Выберите подходящее слово.","options":["option","compromise","evaluate"],"sentence_template":"The most practical solution has some negative consequences, but it avoids a much longer delay."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b137a096-013b-5db2-8233-a727ec40b836', '0928d0b4-4209-5533-b8d1-200854410eae', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","most","practical","solution","has","some","negative","consequences,","but","it","avoids","a","much","longer","delay."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["delay.","longer","much","a","avoids","it","but","consequences,","negative","some","has","solution","practical","most","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b9d904e-d84d-5f40-8a95-0c7e133f2cac', '0928d0b4-4209-5533-b8d1-200854410eae', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The most practical solution has some negative consequences, but it avoids a much longer delay. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec89d243-61c7-537e-ad50-3b561f82c51f', '0928d0b4-4209-5533-b8d1-200854410eae', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The most practical solution has some negative consequences, but it avoids a much longer delay. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Наиболее практичное решение имеет некоторые негативные последствия, но позволяет избежать гораздо более длительной задержки. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('757e4bdf-0362-5b49-8c96-808258a75f79', '0928d0b4-4209-5533-b8d1-200854410eae', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"The most practical solution has some negative consequences, but it avoids a much longer delay.","translation":"Наиболее практичное решение имеет некоторые негативные последствия, но позволяет избежать гораздо более длительной задержки.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Comparing Solutions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff0b041a-622f-5a88-aa4e-66077779f202', '0928d0b4-4209-5533-b8d1-200854410eae', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“option” means one possible choice.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W11","is_correct":true,"text":"one possible choice"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W12","is_correct":false,"text":"a result of an action"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W13","is_correct":false,"text":"realistic and likely to work"}],"word":"option"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e29e0748-970b-5ae2-b956-dc6d6c53f406', '0928d0b4-4209-5533-b8d1-200854410eae', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The most practical solution has some negative consequences, but it avoids a much longer delay.","explanation":"The missing workplace expression is “option”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"option","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W14","is_correct":true},{"audio_text":"practical","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W15","is_correct":false},{"audio_text":"implement","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W16","is_correct":false}],"sentence_template":"The most practical solution has some negative consequences, but it avoids a much longer delay."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44b3c788-9e7c-590b-9548-0138610b0f28', '0928d0b4-4209-5533-b8d1-200854410eae', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"option","explanation":"The sentence requires “option” to communicate the intended workplace meaning.","hint_prefix":"opt","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The most practical solution has some negative consequences, but it avoids a much longer delay."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ab76510-e52b-59ba-acb7-99adf7c8189e', '0928d0b4-4209-5533-b8d1-200854410eae', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"root cause","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W17","text":"root cause"},{"audio_text":"option","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W18","text":"option"},{"audio_text":"consequence","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W19","text":"consequence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6ab7b13-2401-552d-b648-78a534302e4b', '0928d0b4-4209-5533-b8d1-200854410eae', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Comparing Solutions”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W20","is_correct":true,"text":"The most practical solution has some negative consequences, but it avoids a much longer delay."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('48422419-7a86-510a-8842-4cc8426b0080', '0928d0b4-4209-5533-b8d1-200854410eae', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c5c0a5bf-628a-5da2-88f4-d649a103b202', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Agreeing on Action","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30c753ce-72e8-55b7-a5bc-b68caa1daafb', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W01","left":"root cause","right":"основная причина"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W02","left":"option","right":"вариант"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W03","left":"consequence","right":"последствие"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W04","left":"practical","right":"практичный"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W05","left":"compromise","right":"компромисс"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W06","left":"implement","right":"внедрять"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W07","left":"evaluate","right":"оценивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad2533f2-dda2-5f22-ba1a-c617acefc78f', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W08","is_correct":true,"text":"After reaching a compromise, we will implement the plan for one month and evaluate the results."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11c6f895-b6d0-5078-b2b9-f759b1dca780', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"After reaching a compromise, we will implement the plan for one month and evaluate the results.","instruction":"Соберите перевод.","source_language":"ru","source_text":"После достижения компромисса мы внедрим план на один месяц и оценим результаты.","target_language":"en","word_bank":["After","reaching","a","compromise,","we","will","implement","the","plan","for","one","month","and","evaluate","the","results."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc34efad-c5f7-5686-830f-ce09fde9bdda', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"consequence","instruction":"Выберите подходящее слово.","options":["consequence","implement","root cause"],"sentence_template":"After reaching a compromise, we will implement the plan for one month and evaluate the results."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22a97ac6-c543-5996-98a1-6bfa91f37960', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["After","reaching","a","compromise,","we","will","implement","the","plan","for","one","month","and","evaluate","the","results."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["results.","the","evaluate","and","month","one","for","plan","the","implement","will","we","compromise,","a","reaching","After"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e114e4a-3035-5d4b-b3c0-87f11af73aaf', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"After reaching a compromise, we will implement the plan for one month and evaluate the results. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2903712d-7636-5de7-bd7b-387009b59d43', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"After reaching a compromise, we will implement the plan for one month and evaluate the results. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"После достижения компромисса мы внедрим план на один месяц и оценим результаты. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05dc5826-87c7-54ca-9081-1aaf0838f094', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"After reaching a compromise, we will implement the plan for one month and evaluate the results.","translation":"После достижения компромисса мы внедрим план на один месяц и оценим результаты.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Agreeing on Action"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae4b0bbf-563a-573b-95a5-47d5a07d568a', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“consequence” means a result of an action.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W11","is_correct":true,"text":"a result of an action"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W12","is_correct":false,"text":"realistic and likely to work"},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W13","is_correct":false,"text":"an agreement involving concessions"}],"word":"consequence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71fefb73-5e29-5204-9bb5-0d588f0ebfdb', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"After reaching a compromise, we will implement the plan for one month and evaluate the results.","explanation":"The missing workplace expression is “consequence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"consequence","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W14","is_correct":true},{"audio_text":"compromise","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W15","is_correct":false},{"audio_text":"evaluate","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W16","is_correct":false}],"sentence_template":"After reaching a compromise, we will implement the plan for one month and evaluate the results."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa24cc8c-0e51-5416-9380-fb997bb7c694', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"consequence","explanation":"The sentence requires “consequence” to communicate the intended workplace meaning.","hint_prefix":"con","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"After reaching a compromise, we will implement the plan for one month and evaluate the results."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63cc1528-75c0-580c-adf2-faf998a9ab8d', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"root cause","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W17","text":"root cause"},{"audio_text":"option","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W18","text":"option"},{"audio_text":"consequence","id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W19","text":"consequence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d27c0a86-2cd7-594a-bf9a-7c6538579bd6', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Agreeing on Action”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W20","is_correct":true,"text":"After reaching a compromise, we will implement the plan for one month and evaluate the results."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_WORKPLACE_PROBLEMS_DECISIONS_AND_SOLUTIONS_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('48422419-7a86-510a-8842-4cc8426b0080', 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'основная причина', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90b20fd3-2c9b-52eb-b42e-d0dc56c8e752', 'en', 'option', 'вариант', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b94d8e51-d825-5ec3-a762-b21b360cd359', 'en', 'consequence', 'последствие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fcb6609-58c9-59a5-aada-bf1ac08c4c52', 'en', 'practical', 'практичный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a37a202-a9a5-5d8c-afbd-89976ec1d45d', 'en', 'implement', 'внедрять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3375c8a-8caa-5f25-89eb-6c31b0522026', 'en', 'evaluate', 'оценивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'основная причина', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90b20fd3-2c9b-52eb-b42e-d0dc56c8e752', 'en', 'option', 'вариант', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b94d8e51-d825-5ec3-a762-b21b360cd359', 'en', 'consequence', 'последствие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fcb6609-58c9-59a5-aada-bf1ac08c4c52', 'en', 'practical', 'практичный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a37a202-a9a5-5d8c-afbd-89976ec1d45d', 'en', 'implement', 'внедрять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3375c8a-8caa-5f25-89eb-6c31b0522026', 'en', 'evaluate', 'оценивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'основная причина', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90b20fd3-2c9b-52eb-b42e-d0dc56c8e752', 'en', 'option', 'вариант', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b94d8e51-d825-5ec3-a762-b21b360cd359', 'en', 'consequence', 'последствие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fcb6609-58c9-59a5-aada-bf1ac08c4c52', 'en', 'practical', 'практичный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a37a202-a9a5-5d8c-afbd-89976ec1d45d', 'en', 'implement', 'внедрять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3375c8a-8caa-5f25-89eb-6c31b0522026', 'en', 'evaluate', 'оценивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'practical' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '2bbfd1cd-fe17-51ce-9afa-61ef4fbbe059', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '0928d0b4-4209-5533-b8d1-200854410eae', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '0928d0b4-4209-5533-b8d1-200854410eae', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '0928d0b4-4209-5533-b8d1-200854410eae', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '0928d0b4-4209-5533-b8d1-200854410eae', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'practical' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '0928d0b4-4209-5533-b8d1-200854410eae', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '0928d0b4-4209-5533-b8d1-200854410eae', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, '0928d0b4-4209-5533-b8d1-200854410eae', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'practical' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '48422419-7a86-510a-8842-4cc8426b0080', id, 'c5c0a5bf-628a-5da2-88f4-d649a103b202', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
