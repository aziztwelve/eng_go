-- Track: B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b3bc832d-de2e-522f-b8a8-07f17cbdeaab', 'B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT', 'Самостоятельное планирование учёбы и самоуправление', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Самостоятельное планирование учёбы и самоуправление»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Independent Study Planning and Self-Management","ru":"Самостоятельное планирование учёбы и самоуправление"}'::jsonb, '{"en":"Develop independent B2 academic skills for independent study planning and self-management by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Самостоятельное планирование учёбы и самоуправление»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('11cabba7-6864-50e8-bc7a-dce4e9115151', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Long-Term Academic Goals","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9952c2c-e4b7-574d-9e0e-a8447f2bfbbc', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D01","left":"long-term objective","right":"долгосрочная цель"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D02","left":"competing priority","right":"конкурирующий приоритет"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D03","left":"allocate time","right":"распределять время"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D04","left":"procrastination","right":"прокрастинация"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D05","left":"realistic milestone","right":"реалистичный этап"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D06","left":"self-discipline","right":"самодисциплина"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D07","left":"monitor progress","right":"отслеживать прогресс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e61a7514-1516-58cb-8dd7-e27157168ab1', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D08","is_correct":true,"text":"A long-term objective becomes manageable when it is divided into realistic milestones with clear evidence of completion."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00241767-a1f0-545a-8e6c-662c6dfafe15', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A long-term objective becomes manageable when it is divided into realistic milestones with clear evidence of completion.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Долгосрочная цель становится выполнимой, когда она разделена на реалистичные этапы с чёткими признаками завершения.","target_language":"en","word_bank":["A","long-term","objective","becomes","manageable","when","it","is","divided","into","realistic","milestones","with","clear","evidence","of","completion","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e27d9d14-fc1d-5678-a9ec-fe3cfc8a338e', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"long-term objective","instruction":"Выберите подходящее слово.","options":["long-term objective","procrastination","self-discipline"],"sentence_template":"A ___ becomes manageable when it is divided into realistic milestones with clear evidence of completion."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('834f58e4-6747-57b4-9cf8-bde7aa35c63e', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","long-term","objective","becomes","manageable","when","it","is","divided","into","realistic","milestones","with","clear","evidence","of","completion","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","completion","of","evidence","clear","with","milestones","realistic","into","divided","is","it","when","manageable","becomes","objective","long-term","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('537f7ecf-7573-5cd4-a547-eceef0a65fc6', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A long-term objective becomes manageable when it is divided into realistic milestones with clear evidence of completion. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44283f23-c34b-590e-b190-ed6c2c1ecb96', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A long-term objective becomes manageable when it is divided into realistic milestones with clear evidence of completion. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Долгосрочная цель становится выполнимой, когда она разделена на реалистичные этапы с чёткими признаками завершения. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2acfa27-6044-585c-bf72-7cee33dfbf72', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A long-term objective becomes manageable when it is divided into realistic milestones with clear evidence of completion.","translation":"Долгосрочная цель становится выполнимой, когда она разделена на реалистичные этапы с чёткими признаками завершения.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Long-Term Academic Goals"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22da0a4b-1f34-54f1-947d-8c99468d4df6', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“long-term objective” means a result intended to be achieved over an extended period.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D11","is_correct":true,"text":"a result intended to be achieved over an extended period"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D12","is_correct":false,"text":"one of several important demands requiring attention"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D13","is_correct":false,"text":"assign a specific amount of time to a task"}],"word":"long-term objective"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22ce3d35-5929-5f56-b020-d49ce5bc536e', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A long-term objective becomes manageable when it is divided into realistic milestones with clear evidence of completion.","explanation":"The missing academic expression is “long-term objective”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"long-term objective","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D14","is_correct":true},{"audio_text":"allocate time","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D15","is_correct":false},{"audio_text":"realistic milestone","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D16","is_correct":false}],"sentence_template":"A ___ becomes manageable when it is divided into realistic milestones with clear evidence of completion."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f817555d-46ea-5caa-b14d-8c06865b66d5', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"long-term objective","explanation":"The complete academic statement uses “long-term objective” precisely.","hint_prefix":"long","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ becomes manageable when it is divided into realistic milestones with clear evidence of completion."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3535b3aa-b223-5c34-8253-9254331b7768', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"long-term objective","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D17","text":"long-term objective"},{"audio_text":"competing priority","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D18","text":"competing priority"},{"audio_text":"allocate time","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D19","text":"allocate time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('423b3ec2-5442-5393-8011-787a27921e5c', '11cabba7-6864-50e8-bc7a-dce4e9115151', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Long-Term Academic Goals”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D20","is_correct":true,"text":"A long-term objective becomes manageable when it is divided into realistic milestones with clear evidence of completion."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b3bc832d-de2e-522f-b8a8-07f17cbdeaab', '11cabba7-6864-50e8-bc7a-dce4e9115151', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4bc56e41-f661-5fcc-b604-ac8b2922c1f6', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Managing Competing Priorities","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b287288-db97-51f6-82e8-4c99001b9578', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D01","left":"long-term objective","right":"долгосрочная цель"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D02","left":"competing priority","right":"конкурирующий приоритет"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D03","left":"allocate time","right":"распределять время"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D04","left":"procrastination","right":"прокрастинация"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D05","left":"realistic milestone","right":"реалистичный этап"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D06","left":"self-discipline","right":"самодисциплина"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D07","left":"monitor progress","right":"отслеживать прогресс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03878d1b-442a-59fb-bd76-9242b8be1b27', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D08","is_correct":true,"text":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17d93c02-9a2b-51e3-bd2c-4909b8692c82', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда возникает несколько конкурирующих приоритетов, я распределяю время с учётом срочности, учебной ценности и усилий, необходимых для каждой задачи.","target_language":"en","word_bank":["When","several","competing","priorities","arise",",","I","allocate","time","according","to","urgency",",","academic","value",",","and","the","effort","each","task","requires","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17558a23-5a89-5dbf-8f57-cb69544d5f38', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"competing priority","instruction":"Выберите подходящее слово.","options":["competing priority","realistic milestone","monitor progress"],"sentence_template":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('934af003-6a77-5644-902a-a6ed5178e274', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","several","competing","priorities","arise",",","I","allocate","time","according","to","urgency",",","academic","value",",","and","the","effort","each","task","requires","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","requires","task","each","effort","the","and",",","value","academic",",","urgency","to","according","time","allocate","I",",","arise","priorities","competing","several","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2edd184-39b0-5482-9671-075d802f280e', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5478741e-b3e1-5a23-8008-9536be25997b', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Когда возникает несколько конкурирующих приоритетов, я распределяю время с учётом срочности, учебной ценности и усилий, необходимых для каждой задачи. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be91630a-4aaf-56aa-997f-3647166623ce', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires.","translation":"Когда возникает несколько конкурирующих приоритетов, я распределяю время с учётом срочности, учебной ценности и усилий, необходимых для каждой задачи.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Managing Competing Priorities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce99a205-ae3d-5046-bb9e-6efb2595ba4e', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“competing priority” means one of several important demands requiring attention.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D11","is_correct":true,"text":"one of several important demands requiring attention"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D12","is_correct":false,"text":"assign a specific amount of time to a task"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D13","is_correct":false,"text":"the habit of delaying necessary work"}],"word":"competing priority"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('078a7f19-38f0-5312-9843-ec4ccf009327', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires.","explanation":"The missing academic expression is “competing priority”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"competing priority","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D14","is_correct":true},{"audio_text":"procrastination","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D15","is_correct":false},{"audio_text":"self-discipline","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D16","is_correct":false}],"sentence_template":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c351298-7b00-5a94-b98e-2081a03df4be', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"competing priority","explanation":"The complete academic statement uses “competing priority” precisely.","hint_prefix":"comp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49a28a5d-ad1a-5bfd-a2ee-1bdd58a246b3', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"long-term objective","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D17","text":"long-term objective"},{"audio_text":"competing priority","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D18","text":"competing priority"},{"audio_text":"allocate time","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D19","text":"allocate time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f3c31e0-ca5f-5aff-947b-6476bb99d0bb', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Managing Competing Priorities”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D20","is_correct":true,"text":"When several competing priorities arise, I allocate time according to urgency, academic value, and the effort each task requires."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b3bc832d-de2e-522f-b8a8-07f17cbdeaab', '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('43064884-4c08-55d5-80b6-f10a1b87bb36', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Monitoring Independent Study","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13eb8af3-0a21-5ff4-ad6e-43a5635e0fec', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D01","left":"long-term objective","right":"долгосрочная цель"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D02","left":"competing priority","right":"конкурирующий приоритет"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D03","left":"allocate time","right":"распределять время"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D04","left":"procrastination","right":"прокрастинация"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D05","left":"realistic milestone","right":"реалистичный этап"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D06","left":"self-discipline","right":"самодисциплина"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D07","left":"monitor progress","right":"отслеживать прогресс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bb75e38-916a-5cc3-9135-d8895a69c41b', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D08","is_correct":true,"text":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13bc91e3-a8fc-578d-962e-5cae79e88451', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Регулярное отслеживание прогресса помогает рано выявить прокрастинацию и скорректировать учебный план до того, как сроки окажутся под угрозой.","target_language":"en","word_bank":["Monitoring","progress","regularly","helps","identify","procrastination","early","and","allows","a","study","plan","to","be","adjusted","before","deadlines","are","threatened","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14ca2849-9348-59ff-9b3b-b61306002e7b', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"allocate time","instruction":"Выберите подходящее слово.","options":["allocate time","self-discipline","long-term objective"],"sentence_template":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48c02023-1b2b-5713-bedd-7d20a070e394', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Monitoring","progress","regularly","helps","identify","procrastination","early","and","allows","a","study","plan","to","be","adjusted","before","deadlines","are","threatened","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","threatened","are","deadlines","before","adjusted","be","to","plan","study","a","allows","and","early","procrastination","identify","helps","regularly","progress","Monitoring"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc4ec790-e5c2-50f9-b256-ad13c2f3e232', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a7fe31f-e511-54d4-b448-8823a0cdbdac', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Регулярное отслеживание прогресса помогает рано выявить прокрастинацию и скорректировать учебный план до того, как сроки окажутся под угрозой. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0743e15-1e8d-594c-bd4e-1b99867cd7d4', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened.","translation":"Регулярное отслеживание прогресса помогает рано выявить прокрастинацию и скорректировать учебный план до того, как сроки окажутся под угрозой.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Monitoring Independent Study"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ae351db-67b1-5ede-9f0a-644aeb528dc5', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“allocate time” means assign a specific amount of time to a task.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D11","is_correct":true,"text":"assign a specific amount of time to a task"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D12","is_correct":false,"text":"the habit of delaying necessary work"},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D13","is_correct":false,"text":"an achievable point used to measure progress"}],"word":"allocate time"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c21865ac-5930-5c57-b1ba-0e1650f941b0', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened.","explanation":"The missing academic expression is “allocate time”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"allocate time","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D14","is_correct":true},{"audio_text":"realistic milestone","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D15","is_correct":false},{"audio_text":"monitor progress","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D16","is_correct":false}],"sentence_template":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a691b445-0205-5436-a52e-9e62b6dfcde4', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"allocate time","explanation":"The complete academic statement uses “allocate time” precisely.","hint_prefix":"allo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54887acb-e725-5212-9fec-7ce4e0b1936b', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"long-term objective","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D17","text":"long-term objective"},{"audio_text":"competing priority","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D18","text":"competing priority"},{"audio_text":"allocate time","id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D19","text":"allocate time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f818677-b442-5a50-bec2-e993983ba56a', '43064884-4c08-55d5-80b6-f10a1b87bb36', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Monitoring Independent Study”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D20","is_correct":true,"text":"Monitoring progress regularly helps identify procrastination early and allows a study plan to be adjusted before deadlines are threatened."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_INDEPENDENT_STUDY_PLANNING_AND_SELF_MANAGEMENT_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b3bc832d-de2e-522f-b8a8-07f17cbdeaab', '43064884-4c08-55d5-80b6-f10a1b87bb36', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e8d0df1-9c69-53c0-a358-1e89b656acf8', 'en', 'long-term objective', 'долгосрочная цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09cd624-fc8c-5acf-9754-9bb57bea956b', 'en', 'competing priority', 'конкурирующий приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07769743-6f1a-597e-b678-c97b40a586ef', 'en', 'allocate time', 'распределять время', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd7f2ad5-5dd2-5c73-be50-a6d4cbc24f72', 'en', 'procrastination', 'прокрастинация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4c9b3af-47aa-5f45-907f-f6ea7dda7def', 'en', 'realistic milestone', 'реалистичный этап', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c34f9144-84b6-5295-a2df-ecbeffaa279b', 'en', 'self-discipline', 'самодисциплина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e521847a-bb31-5551-8f37-ce4e51dd0eb3', 'en', 'monitor progress', 'отслеживать прогресс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e8d0df1-9c69-53c0-a358-1e89b656acf8', 'en', 'long-term objective', 'долгосрочная цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09cd624-fc8c-5acf-9754-9bb57bea956b', 'en', 'competing priority', 'конкурирующий приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07769743-6f1a-597e-b678-c97b40a586ef', 'en', 'allocate time', 'распределять время', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd7f2ad5-5dd2-5c73-be50-a6d4cbc24f72', 'en', 'procrastination', 'прокрастинация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4c9b3af-47aa-5f45-907f-f6ea7dda7def', 'en', 'realistic milestone', 'реалистичный этап', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c34f9144-84b6-5295-a2df-ecbeffaa279b', 'en', 'self-discipline', 'самодисциплина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e521847a-bb31-5551-8f37-ce4e51dd0eb3', 'en', 'monitor progress', 'отслеживать прогресс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e8d0df1-9c69-53c0-a358-1e89b656acf8', 'en', 'long-term objective', 'долгосрочная цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09cd624-fc8c-5acf-9754-9bb57bea956b', 'en', 'competing priority', 'конкурирующий приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07769743-6f1a-597e-b678-c97b40a586ef', 'en', 'allocate time', 'распределять время', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd7f2ad5-5dd2-5c73-be50-a6d4cbc24f72', 'en', 'procrastination', 'прокрастинация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4c9b3af-47aa-5f45-907f-f6ea7dda7def', 'en', 'realistic milestone', 'реалистичный этап', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c34f9144-84b6-5295-a2df-ecbeffaa279b', 'en', 'self-discipline', 'самодисциплина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e521847a-bb31-5551-8f37-ce4e51dd0eb3', 'en', 'monitor progress', 'отслеживать прогресс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '11cabba7-6864-50e8-bc7a-dce4e9115151', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'long-term objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '11cabba7-6864-50e8-bc7a-dce4e9115151', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '11cabba7-6864-50e8-bc7a-dce4e9115151', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'allocate time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '11cabba7-6864-50e8-bc7a-dce4e9115151', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'procrastination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '11cabba7-6864-50e8-bc7a-dce4e9115151', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'realistic milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '11cabba7-6864-50e8-bc7a-dce4e9115151', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-discipline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '11cabba7-6864-50e8-bc7a-dce4e9115151', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'monitor progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'long-term objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'allocate time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'procrastination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'realistic milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-discipline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '4bc56e41-f661-5fcc-b604-ac8b2922c1f6', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'monitor progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '43064884-4c08-55d5-80b6-f10a1b87bb36', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'long-term objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '43064884-4c08-55d5-80b6-f10a1b87bb36', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '43064884-4c08-55d5-80b6-f10a1b87bb36', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'allocate time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '43064884-4c08-55d5-80b6-f10a1b87bb36', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'procrastination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '43064884-4c08-55d5-80b6-f10a1b87bb36', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'realistic milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '43064884-4c08-55d5-80b6-f10a1b87bb36', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-discipline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b3bc832d-de2e-522f-b8a8-07f17cbdeaab', id, '43064884-4c08-55d5-80b6-f10a1b87bb36', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'monitor progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
