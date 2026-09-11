-- Track: B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a30657ae-37c0-563a-be02-0dfb8af73519', 'B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION', 'Структура текста, цель и связность', 'Развивайте экзаменационные навыки уровня B2 по теме «Структура текста, цель и связность», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Reading Structure, Purpose and Cohesion","ru":"Структура текста, цель и связность"}'::jsonb, '{"en":"Develop B2 exam skills for reading structure, purpose and cohesion by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Структура текста, цель и связность», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f4c6f296-1336-5dc1-b6b2-4faedd289e52', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Recognising Text Purpose","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6e48594-9655-5ae9-887d-355355106043', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D01","left":"rhetorical purpose","right":"риторическая цель"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D02","left":"topic shift","right":"смена темы"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D03","left":"cohesive reference","right":"связующая отсылка"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D04","left":"supporting detail","right":"подтверждающая деталь"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D05","left":"contrast marker","right":"маркер противопоставления"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D06","left":"paragraph function","right":"функция абзаца"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D07","left":"line of argument","right":"линия аргументации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ae111dd-8234-5172-a959-71c0c0207841', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D08","is_correct":true,"text":"The paragraph’s rhetorical purpose is to challenge the assumption introduced earlier rather than provide another example of it."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a631b4d7-3838-560e-b836-58ffc78e17b1', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The paragraph’s rhetorical purpose is to challenge the assumption introduced earlier rather than provide another example of it.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Риторическая цель абзаца состоит в том, чтобы оспорить ранее введённое предположение, а не привести ещё один его пример.","target_language":"en","word_bank":["The","paragraph’s","rhetorical","purpose","is","to","challenge","the","assumption","introduced","earlier","rather","than","provide","another","example","of","it","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69f9dde7-8530-5fa3-94ce-eaad61b096cc', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"rhetorical purpose","instruction":"Выберите подходящее слово.","options":["rhetorical purpose","supporting detail","paragraph function"],"sentence_template":"The paragraph’s ___ is to challenge the assumption introduced earlier rather than provide another example of it."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ab17139-72ff-52e3-98c2-e78a990fe1a3', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","paragraph’s","rhetorical","purpose","is","to","challenge","the","assumption","introduced","earlier","rather","than","provide","another","example","of","it","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","it","of","example","another","provide","than","rather","earlier","introduced","assumption","the","challenge","to","is","purpose","rhetorical","paragraph’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92ba5e97-7faa-5434-89a4-0cde6cc4a444', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The paragraph’s rhetorical purpose is to challenge the assumption introduced earlier rather than provide another example of it. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85ea8985-6e7c-5281-b772-9787128b8013', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The paragraph’s rhetorical purpose is to challenge the assumption introduced earlier rather than provide another example of it. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Риторическая цель абзаца состоит в том, чтобы оспорить ранее введённое предположение, а не привести ещё один его пример. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a30be69-8db4-5317-baed-945a9dd9ebd9', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The paragraph’s rhetorical purpose is to challenge the assumption introduced earlier rather than provide another example of it.","translation":"Риторическая цель абзаца состоит в том, чтобы оспорить ранее введённое предположение, а не привести ещё один его пример.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Recognising Text Purpose"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e010f35e-0aa9-5717-9118-22982940fef5', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“rhetorical purpose” means the effect a writer intends to achieve.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D11","is_correct":true,"text":"the effect a writer intends to achieve"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D12","is_correct":false,"text":"a movement to a different focus in a text"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D13","is_correct":false,"text":"a word referring to another part of a text"}],"word":"rhetorical purpose"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7e05541-1589-5796-b93c-630ec8390101', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The paragraph’s rhetorical purpose is to challenge the assumption introduced earlier rather than provide another example of it.","explanation":"The missing B2 exam expression is “rhetorical purpose”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"rhetorical purpose","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D14","is_correct":true},{"audio_text":"cohesive reference","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D15","is_correct":false},{"audio_text":"contrast marker","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D16","is_correct":false}],"sentence_template":"The paragraph’s ___ is to challenge the assumption introduced earlier rather than provide another example of it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('917fb00b-b81d-520c-8f3f-c69a1f1baf49', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"rhetorical purpose","explanation":"The complete answer uses “rhetorical purpose” accurately.","hint_prefix":"rhet","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The paragraph’s ___ is to challenge the assumption introduced earlier rather than provide another example of it."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('901fee44-3f6f-5f0d-be2f-5e9609b1196c', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rhetorical purpose","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D17","text":"rhetorical purpose"},{"audio_text":"topic shift","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D18","text":"topic shift"},{"audio_text":"cohesive reference","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D19","text":"cohesive reference"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('456a27f6-21ca-5960-a1ad-36b0929e3401', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Recognising Text Purpose”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D20","is_correct":true,"text":"The paragraph’s rhetorical purpose is to challenge the assumption introduced earlier rather than provide another example of it."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a30657ae-37c0-563a-be02-0dfb8af73519', 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Tracing Paragraph Development","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('112d7a17-54c0-5b17-a959-6a22cf70e350', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D01","left":"rhetorical purpose","right":"риторическая цель"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D02","left":"topic shift","right":"смена темы"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D03","left":"cohesive reference","right":"связующая отсылка"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D04","left":"supporting detail","right":"подтверждающая деталь"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D05","left":"contrast marker","right":"маркер противопоставления"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D06","left":"paragraph function","right":"функция абзаца"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D07","left":"line of argument","right":"линия аргументации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5e767ce-c81f-5308-95c6-d877d209039f', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D08","is_correct":true,"text":"A topic shift is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63d084b5-215a-5b66-8887-3963c54812c1', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A topic shift is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Смена темы обозначена маркером противопоставления, после которого автор рассматривает непредвиденные последствия политики.","target_language":"en","word_bank":["A","topic","shift","is","signalled","by","the","contrast","marker",",","after","which","the","writer","examines","the","policy’s","unintended","consequences","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82a714fb-0d93-5b5f-9ed5-59605184d399', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"topic shift","instruction":"Выберите подходящее слово.","options":["topic shift","contrast marker","line of argument"],"sentence_template":"A ___ is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5ad5203-c4cc-5cba-9a06-0754d9d0cf90', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","topic","shift","is","signalled","by","the","contrast","marker",",","after","which","the","writer","examines","the","policy’s","unintended","consequences","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","consequences","unintended","policy’s","the","examines","writer","the","which","after",",","marker","contrast","the","by","signalled","is","shift","topic","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e8e6f16-2605-5c48-91c7-5ffc57b57d94', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A topic shift is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee558d15-c1f3-5d72-a979-c5ac108d41c8', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A topic shift is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Смена темы обозначена маркером противопоставления, после которого автор рассматривает непредвиденные последствия политики. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce205527-5833-53f7-9afb-c5976d2cf1f1', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A topic shift is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences.","translation":"Смена темы обозначена маркером противопоставления, после которого автор рассматривает непредвиденные последствия политики.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Tracing Paragraph Development"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f437786-a9df-54f0-89a8-5bdccdd30b0a', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“topic shift” means a movement to a different focus in a text.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D11","is_correct":true,"text":"a movement to a different focus in a text"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D12","is_correct":false,"text":"a word referring to another part of a text"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D13","is_correct":false,"text":"information developing a main point"}],"word":"topic shift"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba1d78d1-61b7-5aab-b71e-e768fd62df7c', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A topic shift is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences.","explanation":"The missing B2 exam expression is “topic shift”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"topic shift","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D14","is_correct":true},{"audio_text":"supporting detail","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D15","is_correct":false},{"audio_text":"paragraph function","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D16","is_correct":false}],"sentence_template":"A ___ is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('230da7f8-ed92-53f2-ade8-56a234ad53d6', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"topic shift","explanation":"The complete answer uses “topic shift” accurately.","hint_prefix":"topi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25298b7c-4348-5184-8e07-d2933fd5be1d', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rhetorical purpose","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D17","text":"rhetorical purpose"},{"audio_text":"topic shift","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D18","text":"topic shift"},{"audio_text":"cohesive reference","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D19","text":"cohesive reference"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47a9a4ab-10e0-5f1f-8911-3d2392373c32', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Tracing Paragraph Development”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D20","is_correct":true,"text":"A topic shift is signalled by the contrast marker, after which the writer examines the policy’s unintended consequences."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a30657ae-37c0-563a-be02-0dfb8af73519', 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Using Cohesive Clues","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a49e65f2-8458-528c-92a6-45b19edd6a8d', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D01","left":"rhetorical purpose","right":"риторическая цель"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D02","left":"topic shift","right":"смена темы"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D03","left":"cohesive reference","right":"связующая отсылка"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D04","left":"supporting detail","right":"подтверждающая деталь"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D05","left":"contrast marker","right":"маркер противопоставления"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D06","left":"paragraph function","right":"функция абзаца"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D07","left":"line of argument","right":"линия аргументации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14ffd161-48f6-54dd-b912-951a885d1250', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D08","is_correct":true,"text":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c526d41-8650-5281-9dcd-d53e8386f0b8', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Понимание функции каждого абзаца раскрывает линию аргументации и значительно облегчает задания на вставку пропущенных предложений.","target_language":"en","word_bank":["Understanding","each","paragraph","function","reveals","the","line","of","argument","and","makes","missing-sentence","tasks","considerably","easier","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85e7ba19-8810-5e20-a5ea-9b0d4a2037ed', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cohesive reference","instruction":"Выберите подходящее слово.","options":["cohesive reference","paragraph function","rhetorical purpose"],"sentence_template":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca217fcd-184e-5059-aea4-64808cf2435d', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Understanding","each","paragraph","function","reveals","the","line","of","argument","and","makes","missing-sentence","tasks","considerably","easier","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","easier","considerably","tasks","missing-sentence","makes","and","argument","of","line","the","reveals","function","paragraph","each","Understanding"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f352c91-7ff6-55dc-b720-c784e4463188', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f5fced1-d800-50b2-88fa-2d8ccaee81e7', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Понимание функции каждого абзаца раскрывает линию аргументации и значительно облегчает задания на вставку пропущенных предложений. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d03fb8ab-7bd0-554b-a31b-6a2f5d6c5de6', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier.","translation":"Понимание функции каждого абзаца раскрывает линию аргументации и значительно облегчает задания на вставку пропущенных предложений.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Using Cohesive Clues"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6926e37-0ae3-5e63-bd1c-1d55a0261aca', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cohesive reference” means a word referring to another part of a text.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D11","is_correct":true,"text":"a word referring to another part of a text"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D12","is_correct":false,"text":"information developing a main point"},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D13","is_correct":false,"text":"language signalling an opposing idea"}],"word":"cohesive reference"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fa90d95-e83e-51bd-a919-7a3def161396', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier.","explanation":"The missing B2 exam expression is “cohesive reference”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cohesive reference","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D14","is_correct":true},{"audio_text":"contrast marker","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D15","is_correct":false},{"audio_text":"line of argument","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D16","is_correct":false}],"sentence_template":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58cc4734-89b0-5d77-b3d7-348ca315581f', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cohesive reference","explanation":"The complete answer uses “cohesive reference” accurately.","hint_prefix":"cohe","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16c864f1-21cd-5f18-8ac6-e0d23b52eb89', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rhetorical purpose","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D17","text":"rhetorical purpose"},{"audio_text":"topic shift","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D18","text":"topic shift"},{"audio_text":"cohesive reference","id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D19","text":"cohesive reference"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a0d5f68-61cc-544d-82ae-0541f5008717', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Using Cohesive Clues”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D20","is_correct":true,"text":"Understanding each paragraph function reveals the line of argument and makes missing-sentence tasks considerably easier."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_READING_STRUCTURE_PURPOSE_AND_COHESION_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a30657ae-37c0-563a-be02-0dfb8af73519', '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c00c93fd-0d63-5faa-ac3a-ce5207aeb18b', 'en', 'rhetorical purpose', 'риторическая цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07c26e60-15d3-5b0d-9e69-14c90f168830', 'en', 'topic shift', 'смена темы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('629eeb7a-7034-5768-b34e-bccc30859162', 'en', 'cohesive reference', 'связующая отсылка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bea47b-5f67-5721-bd2f-5744b309e4a8', 'en', 'supporting detail', 'подтверждающая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6e7d10b-8ee2-5de1-bc60-0a9d24d1f6be', 'en', 'contrast marker', 'маркер противопоставления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03e58195-37c2-54d6-84f1-8f211ec51045', 'en', 'paragraph function', 'функция абзаца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07923af3-a6dd-569d-9a11-996be1837890', 'en', 'line of argument', 'линия аргументации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c00c93fd-0d63-5faa-ac3a-ce5207aeb18b', 'en', 'rhetorical purpose', 'риторическая цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07c26e60-15d3-5b0d-9e69-14c90f168830', 'en', 'topic shift', 'смена темы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('629eeb7a-7034-5768-b34e-bccc30859162', 'en', 'cohesive reference', 'связующая отсылка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bea47b-5f67-5721-bd2f-5744b309e4a8', 'en', 'supporting detail', 'подтверждающая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6e7d10b-8ee2-5de1-bc60-0a9d24d1f6be', 'en', 'contrast marker', 'маркер противопоставления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03e58195-37c2-54d6-84f1-8f211ec51045', 'en', 'paragraph function', 'функция абзаца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07923af3-a6dd-569d-9a11-996be1837890', 'en', 'line of argument', 'линия аргументации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c00c93fd-0d63-5faa-ac3a-ce5207aeb18b', 'en', 'rhetorical purpose', 'риторическая цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07c26e60-15d3-5b0d-9e69-14c90f168830', 'en', 'topic shift', 'смена темы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('629eeb7a-7034-5768-b34e-bccc30859162', 'en', 'cohesive reference', 'связующая отсылка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bea47b-5f67-5721-bd2f-5744b309e4a8', 'en', 'supporting detail', 'подтверждающая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6e7d10b-8ee2-5de1-bc60-0a9d24d1f6be', 'en', 'contrast marker', 'маркер противопоставления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03e58195-37c2-54d6-84f1-8f211ec51045', 'en', 'paragraph function', 'функция абзаца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07923af3-a6dd-569d-9a11-996be1837890', 'en', 'line of argument', 'линия аргументации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive reference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrast marker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph function' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'f4c6f296-1336-5dc1-b6b2-4faedd289e52', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive reference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrast marker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph function' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, 'c6ce4bc6-5b15-5f2d-aae9-87dfcf351cb4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive reference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrast marker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph function' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a30657ae-37c0-563a-be02-0dfb8af73519', id, '0a2719ab-6b8f-5289-b6d1-d8e2f17847aa', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
