-- Track: B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f0848d61-6731-5aef-bb1e-6d4dc5f85626', 'B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE', 'Критическое чтение, аргументы и доказательства', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Критическое чтение, аргументы и доказательства»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Critical Reading, Arguments and Evidence","ru":"Критическое чтение, аргументы и доказательства"}'::jsonb, '{"en":"Develop independent B2 academic skills for critical reading, arguments and evidence by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Критическое чтение, аргументы и доказательства»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3a2fd2c3-f026-50a2-a59c-63babf036581', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Evaluating an Argument","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22c253a2-3248-5703-8f49-081bbbdb7483', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D01","left":"line of reasoning","right":"ход рассуждения"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D02","left":"empirical evidence","right":"эмпирические данные"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D03","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D04","left":"methodological limitation","right":"методологическое ограничение"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D05","left":"selective evidence","right":"избирательные доказательства"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D06","left":"authorial bias","right":"авторская предвзятость"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D07","left":"corroborate","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63cc125e-3b8d-58cc-8e2f-665a80395c92', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D08","is_correct":true,"text":"A line of reasoning may appear logical while still depending on an underlying assumption that the author has not justified."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('995b66ff-6cc8-59ee-a329-7e5aa43a3369', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A line of reasoning may appear logical while still depending on an underlying assumption that the author has not justified.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ход рассуждения может казаться логичным, при этом опираясь на скрытое предположение, которое автор не обосновал.","target_language":"en","word_bank":["A","line","of","reasoning","may","appear","logical","while","still","depending","on","an","underlying","assumption","that","the","author","has","not","justified","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c018ad8-ff67-51b6-a7a0-b6c100ce2a7e', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"line of reasoning","instruction":"Выберите подходящее слово.","options":["line of reasoning","methodological limitation","authorial bias"],"sentence_template":"A ___ may appear logical while still depending on an underlying assumption that the author has not justified."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cfca42b-1440-5a2e-819a-9aef95d38b81', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","line","of","reasoning","may","appear","logical","while","still","depending","on","an","underlying","assumption","that","the","author","has","not","justified","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","justified","not","has","author","the","that","assumption","underlying","an","on","depending","still","while","logical","appear","may","reasoning","of","line","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('559f8ad7-48cd-5dce-94e7-f2cfa70b601e', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A line of reasoning may appear logical while still depending on an underlying assumption that the author has not justified. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2924f904-a368-510e-abc1-d8b7a00f1dee', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A line of reasoning may appear logical while still depending on an underlying assumption that the author has not justified. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Ход рассуждения может казаться логичным, при этом опираясь на скрытое предположение, которое автор не обосновал. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66fe3a05-fa70-52e9-81e0-87f24f40123f', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A line of reasoning may appear logical while still depending on an underlying assumption that the author has not justified.","translation":"Ход рассуждения может казаться логичным, при этом опираясь на скрытое предположение, которое автор не обосновал.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Evaluating an Argument"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce3c5c47-a0bb-5ad0-ba3c-bb3c40a89b5e', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“line of reasoning” means the connected sequence of ideas supporting a conclusion.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D11","is_correct":true,"text":"the connected sequence of ideas supporting a conclusion"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D12","is_correct":false,"text":"information obtained through observation or experiment"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D13","is_correct":false,"text":"an unstated belief on which an argument depends"}],"word":"line of reasoning"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa257cf8-e78b-510e-8f8f-3aca119e51df', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A line of reasoning may appear logical while still depending on an underlying assumption that the author has not justified.","explanation":"The missing academic expression is “line of reasoning”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"line of reasoning","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D14","is_correct":true},{"audio_text":"underlying assumption","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D15","is_correct":false},{"audio_text":"selective evidence","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D16","is_correct":false}],"sentence_template":"A ___ may appear logical while still depending on an underlying assumption that the author has not justified."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bd616bf-269c-54a1-b01e-93315baf6d6d', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"line of reasoning","explanation":"The complete academic statement uses “line of reasoning” precisely.","hint_prefix":"line","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ may appear logical while still depending on an underlying assumption that the author has not justified."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bffd75e6-43ac-52fc-baa7-906fc39b3b65', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"line of reasoning","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D17","text":"line of reasoning"},{"audio_text":"empirical evidence","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D18","text":"empirical evidence"},{"audio_text":"underlying assumption","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D19","text":"underlying assumption"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89d8e4f9-6238-51b8-a1cb-8011bf7c58d8', '3a2fd2c3-f026-50a2-a59c-63babf036581', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Evaluating an Argument”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D20","is_correct":true,"text":"A line of reasoning may appear logical while still depending on an underlying assumption that the author has not justified."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0848d61-6731-5aef-bb1e-6d4dc5f85626', '3a2fd2c3-f026-50a2-a59c-63babf036581', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4bda7c1d-f97f-5eca-bc86-8bc4dd031520', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Comparing Sources","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a17a7d4b-8b31-5fcc-8a76-c844576d746e', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D01","left":"line of reasoning","right":"ход рассуждения"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D02","left":"empirical evidence","right":"эмпирические данные"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D03","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D04","left":"methodological limitation","right":"методологическое ограничение"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D05","left":"selective evidence","right":"избирательные доказательства"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D06","left":"authorial bias","right":"авторская предвзятость"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D07","left":"corroborate","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('930c5e7c-aba6-52b0-8706-343cb99391c0', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D08","is_correct":true,"text":"Empirical evidence is more persuasive when the research method is transparent and its methodological limitations are acknowledged."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('223a67ab-dd27-5d34-a221-c998be79cbd3', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Empirical evidence is more persuasive when the research method is transparent and its methodological limitations are acknowledged.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эмпирические данные убедительнее, когда метод исследования прозрачен, а его методологические ограничения признаны.","target_language":"en","word_bank":["Empirical","evidence","is","more","persuasive","when","the","research","method","is","transparent","and","its","methodological","limitations","are","acknowledged","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c3a99ee-842e-5a8d-aaa9-715a125fc436', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"empirical evidence","instruction":"Выберите подходящее слово.","options":["empirical evidence","selective evidence","corroborate"],"sentence_template":"___ is more persuasive when the research method is transparent and its methodological limitations are acknowledged."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5142c70b-c646-5fea-9c9c-767f0a94e15a', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Empirical","evidence","is","more","persuasive","when","the","research","method","is","transparent","and","its","methodological","limitations","are","acknowledged","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","acknowledged","are","limitations","methodological","its","and","transparent","is","method","research","the","when","persuasive","more","is","evidence","Empirical"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a28eacd-e460-5158-b2eb-9704126daba3', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Empirical evidence is more persuasive when the research method is transparent and its methodological limitations are acknowledged. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c80a00ff-6bb2-530f-b823-163c0cbe51c3', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Empirical evidence is more persuasive when the research method is transparent and its methodological limitations are acknowledged. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Эмпирические данные убедительнее, когда метод исследования прозрачен, а его методологические ограничения признаны. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26a09b9b-f4ae-53ea-afeb-250602bd13fd', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Empirical evidence is more persuasive when the research method is transparent and its methodological limitations are acknowledged.","translation":"Эмпирические данные убедительнее, когда метод исследования прозрачен, а его методологические ограничения признаны.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Comparing Sources"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1563f06-f8b4-524c-b72f-feb9da78e398', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“empirical evidence” means information obtained through observation or experiment.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D11","is_correct":true,"text":"information obtained through observation or experiment"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D12","is_correct":false,"text":"an unstated belief on which an argument depends"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D13","is_correct":false,"text":"a weakness arising from how research was designed"}],"word":"empirical evidence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2e5a380-76ae-58e4-8aff-137075cb28b2', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Empirical evidence is more persuasive when the research method is transparent and its methodological limitations are acknowledged.","explanation":"The missing academic expression is “empirical evidence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"empirical evidence","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D14","is_correct":true},{"audio_text":"methodological limitation","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D15","is_correct":false},{"audio_text":"authorial bias","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D16","is_correct":false}],"sentence_template":"___ is more persuasive when the research method is transparent and its methodological limitations are acknowledged."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92fc55fc-1606-54a0-8162-ca758ca49464', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"empirical evidence","explanation":"The complete academic statement uses “empirical evidence” precisely.","hint_prefix":"empi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is more persuasive when the research method is transparent and its methodological limitations are acknowledged."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('812c8e43-85b5-59b0-b812-3fdc21fc4c6a', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"line of reasoning","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D17","text":"line of reasoning"},{"audio_text":"empirical evidence","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D18","text":"empirical evidence"},{"audio_text":"underlying assumption","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D19","text":"underlying assumption"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a70cb2c-f217-5a24-b60c-4e07ab90a72c', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Comparing Sources”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D20","is_correct":true,"text":"Empirical evidence is more persuasive when the research method is transparent and its methodological limitations are acknowledged."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0848d61-6731-5aef-bb1e-6d4dc5f85626', '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fd00d6e7-bc8b-5310-b636-7bce1a35fceb', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Identifying Bias and Assumptions","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c66be27-0250-5648-8d6f-8e29cf967976', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D01","left":"line of reasoning","right":"ход рассуждения"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D02","left":"empirical evidence","right":"эмпирические данные"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D03","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D04","left":"methodological limitation","right":"методологическое ограничение"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D05","left":"selective evidence","right":"избирательные доказательства"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D06","left":"authorial bias","right":"авторская предвзятость"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D07","left":"corroborate","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e848b37d-5182-588b-87df-18accd0969d0', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D08","is_correct":true,"text":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dd4f181-0fd1-5cde-8b36-15d36bba3837', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сравнение независимых источников может подтвердить вывод и показать, опирался ли один автор на избирательные доказательства.","target_language":"en","word_bank":["Comparing","independent","sources","can","corroborate","a","conclusion","and","reveal","whether","one","writer","has","relied","on","selective","evidence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f70d629-ae67-507a-b816-4fa6d503db6a', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"underlying assumption","instruction":"Выберите подходящее слово.","options":["underlying assumption","authorial bias","line of reasoning"],"sentence_template":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27d43492-bf36-56d0-8e52-fb91a5aea3b0', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Comparing","independent","sources","can","corroborate","a","conclusion","and","reveal","whether","one","writer","has","relied","on","selective","evidence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","evidence","selective","on","relied","has","writer","one","whether","reveal","and","conclusion","a","corroborate","can","sources","independent","Comparing"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3a3bbbf-16c3-5e9c-8f94-554097bfce63', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ded8bbb-4fc0-590e-bb20-e83950410203', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Сравнение независимых источников может подтвердить вывод и показать, опирался ли один автор на избирательные доказательства. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e8c10bd-fb3f-5f4f-b7e1-9bb12868f96c', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence.","translation":"Сравнение независимых источников может подтвердить вывод и показать, опирался ли один автор на избирательные доказательства.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Identifying Bias and Assumptions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e1b27cc-b3fc-592a-ad94-2d71cca7ac1d', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“underlying assumption” means an unstated belief on which an argument depends.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D11","is_correct":true,"text":"an unstated belief on which an argument depends"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D12","is_correct":false,"text":"a weakness arising from how research was designed"},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D13","is_correct":false,"text":"information chosen while relevant contrary material is omitted"}],"word":"underlying assumption"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ff41297-12af-5e48-bc2c-6ccb4a418a67', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence.","explanation":"The missing academic expression is “underlying assumption”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"underlying assumption","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D14","is_correct":true},{"audio_text":"selective evidence","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D15","is_correct":false},{"audio_text":"corroborate","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D16","is_correct":false}],"sentence_template":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5ece581-19db-5298-abf6-66ce79e14cec', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"underlying assumption","explanation":"The complete academic statement uses “underlying assumption” precisely.","hint_prefix":"unde","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd021b8b-e89f-592f-ad85-d2293b95d594', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"line of reasoning","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D17","text":"line of reasoning"},{"audio_text":"empirical evidence","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D18","text":"empirical evidence"},{"audio_text":"underlying assumption","id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D19","text":"underlying assumption"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6922e8d-7911-54b9-b088-7d852dae377d', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Identifying Bias and Assumptions”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D20","is_correct":true,"text":"Comparing independent sources can corroborate a conclusion and reveal whether one writer has relied on selective evidence."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_CRITICAL_READING_ARGUMENTS_AND_EVIDENCE_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0848d61-6731-5aef-bb1e-6d4dc5f85626', 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27236e9e-09dc-55ed-bc2e-019dfb3495c5', 'en', 'line of reasoning', 'ход рассуждения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('227733ee-bb0c-5759-8e52-47915bc9e2b2', 'en', 'empirical evidence', 'эмпирические данные', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c1ae940-18d7-55e1-bd34-37a20475cda9', 'en', 'methodological limitation', 'методологическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6f37453-1df3-544b-a6c3-57438c886dd6', 'en', 'selective evidence', 'избирательные доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cd410952-281a-52f4-8e24-76905f19ca31', 'en', 'authorial bias', 'авторская предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9a8cff9-cda0-52d5-bc23-d358572f1468', 'en', 'corroborate', 'подтверждать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27236e9e-09dc-55ed-bc2e-019dfb3495c5', 'en', 'line of reasoning', 'ход рассуждения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('227733ee-bb0c-5759-8e52-47915bc9e2b2', 'en', 'empirical evidence', 'эмпирические данные', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c1ae940-18d7-55e1-bd34-37a20475cda9', 'en', 'methodological limitation', 'методологическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6f37453-1df3-544b-a6c3-57438c886dd6', 'en', 'selective evidence', 'избирательные доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cd410952-281a-52f4-8e24-76905f19ca31', 'en', 'authorial bias', 'авторская предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9a8cff9-cda0-52d5-bc23-d358572f1468', 'en', 'corroborate', 'подтверждать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27236e9e-09dc-55ed-bc2e-019dfb3495c5', 'en', 'line of reasoning', 'ход рассуждения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('227733ee-bb0c-5759-8e52-47915bc9e2b2', 'en', 'empirical evidence', 'эмпирические данные', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c1ae940-18d7-55e1-bd34-37a20475cda9', 'en', 'methodological limitation', 'методологическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6f37453-1df3-544b-a6c3-57438c886dd6', 'en', 'selective evidence', 'избирательные доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cd410952-281a-52f4-8e24-76905f19ca31', 'en', 'authorial bias', 'авторская предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9a8cff9-cda0-52d5-bc23-d358572f1468', 'en', 'corroborate', 'подтверждать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '3a2fd2c3-f026-50a2-a59c-63babf036581', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of reasoning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '3a2fd2c3-f026-50a2-a59c-63babf036581', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'empirical evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '3a2fd2c3-f026-50a2-a59c-63babf036581', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '3a2fd2c3-f026-50a2-a59c-63babf036581', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '3a2fd2c3-f026-50a2-a59c-63babf036581', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'selective evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '3a2fd2c3-f026-50a2-a59c-63babf036581', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '3a2fd2c3-f026-50a2-a59c-63babf036581', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'corroborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of reasoning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'empirical evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'selective evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, '4bda7c1d-f97f-5eca-bc86-8bc4dd031520', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'corroborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of reasoning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'empirical evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'methodological limitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'selective evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0848d61-6731-5aef-bb1e-6d4dc5f85626', id, 'fd00d6e7-bc8b-5310-b636-7bce1a35fceb', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'corroborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
