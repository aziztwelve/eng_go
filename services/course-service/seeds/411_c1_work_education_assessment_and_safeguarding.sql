-- Track: C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('836e8b0f-7ca0-56a7-8861-3c51066a24d7', 'C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING', 'Образование, оценивание и защита учащихся', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Образование, оценивание и защита учащихся» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Education, Assessment and Safeguarding","ru":"Образование, оценивание и защита учащихся"}'::jsonb, '{"en":"Develop advanced C1 professional communication for education, assessment and safeguarding through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Образование, оценивание и защита учащихся» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('811545eb-47eb-5b48-be81-6950c203da08', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Moderating Student Assessment","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec6e17cd-4391-515a-9a9c-ce4b19b03871', '811545eb-47eb-5b48-be81-6950c203da08', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D01","left":"assessment moderation","right":"модерация оценивания"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D02","left":"learning outcome","right":"результат обучения"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D03","left":"reasonable adjustment","right":"разумное приспособление"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D04","left":"formative feedback","right":"формирующая обратная связь"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D05","left":"safeguarding concern","right":"проблема безопасности учащегося"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D06","left":"mandatory reporting","right":"обязательное сообщение"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D07","left":"confidentiality boundary","right":"граница конфиденциальности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fc67660-6070-5d20-8add-d5ac3d1d609a', '811545eb-47eb-5b48-be81-6950c203da08', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D08","is_correct":true,"text":"Assessment moderation should verify that grading decisions reflect the same learning outcomes and evidential standards across classes."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f90053d-89a8-55bb-b5b0-78c18387360c', '811545eb-47eb-5b48-be81-6950c203da08', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Assessment moderation should verify that grading decisions reflect the same learning outcomes and evidential standards across classes.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Модерация оценивания должна подтверждать, что решения об оценках отражают одинаковые результаты обучения и стандарты доказательств во всех классах.","target_language":"en","word_bank":["Assessment","moderation","should","verify","that","grading","decisions","reflect","the","same","learning","outcomes","and","evidential","standards","across","classes","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('367896e2-9dbd-5d95-a57a-e13e5c13fd36', '811545eb-47eb-5b48-be81-6950c203da08', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"assessment moderation","instruction":"Выберите подходящее слово.","options":["assessment moderation","formative feedback","mandatory reporting"],"sentence_template":"___ should verify that grading decisions reflect the same learning outcomes and evidential standards across classes."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e0194fb-76b9-526a-b1fc-a0c16cd153b4', '811545eb-47eb-5b48-be81-6950c203da08', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Assessment","moderation","should","verify","that","grading","decisions","reflect","the","same","learning","outcomes","and","evidential","standards","across","classes","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","classes","across","standards","evidential","and","outcomes","learning","same","the","reflect","decisions","grading","that","verify","should","moderation","Assessment"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a36441c-e6b5-5f18-bcb0-c9ddf5a610e4', '811545eb-47eb-5b48-be81-6950c203da08', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Assessment moderation should verify that grading decisions reflect the same learning outcomes and evidential standards across classes. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d89ccf46-a0a8-5776-b16d-ca9008e9a9be', '811545eb-47eb-5b48-be81-6950c203da08', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Assessment moderation should verify that grading decisions reflect the same learning outcomes and evidential standards across classes. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Модерация оценивания должна подтверждать, что решения об оценках отражают одинаковые результаты обучения и стандарты доказательств во всех классах. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0547b254-6b09-5410-8d1b-2d32520cf8c5', '811545eb-47eb-5b48-be81-6950c203da08', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Assessment moderation should verify that grading decisions reflect the same learning outcomes and evidential standards across classes.","translation":"Модерация оценивания должна подтверждать, что решения об оценках отражают одинаковые результаты обучения и стандарты доказательств во всех классах.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Moderating Student Assessment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31496555-d78c-587b-855e-df71728ad280', '811545eb-47eb-5b48-be81-6950c203da08', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“assessment moderation” means a process ensuring consistent grading standards.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D11","is_correct":true,"text":"a process ensuring consistent grading standards"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D12","is_correct":false,"text":"a capability learners should demonstrate"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D13","is_correct":false,"text":"support removing disadvantage without changing standards"}],"word":"assessment moderation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c79d5db-ce3e-5887-b6ba-718f99622599', '811545eb-47eb-5b48-be81-6950c203da08', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Assessment moderation should verify that grading decisions reflect the same learning outcomes and evidential standards across classes.","explanation":"The missing professional term is “assessment moderation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"assessment moderation","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D14","is_correct":true},{"audio_text":"reasonable adjustment","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D15","is_correct":false},{"audio_text":"safeguarding concern","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D16","is_correct":false}],"sentence_template":"___ should verify that grading decisions reflect the same learning outcomes and evidential standards across classes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c28647f7-652c-56de-aa99-e2793aab67dd', '811545eb-47eb-5b48-be81-6950c203da08', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"assessment moderation","explanation":"The complete professional statement uses “assessment moderation” precisely.","hint_prefix":"asse","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ should verify that grading decisions reflect the same learning outcomes and evidential standards across classes."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88de3cb3-44f9-5a80-ae1f-6d7ddfe89bfa', '811545eb-47eb-5b48-be81-6950c203da08', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"assessment moderation","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D17","text":"assessment moderation"},{"audio_text":"learning outcome","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D18","text":"learning outcome"},{"audio_text":"reasonable adjustment","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D19","text":"reasonable adjustment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6bfd9c0-e83e-5de4-a231-32cce6e941b7', '811545eb-47eb-5b48-be81-6950c203da08', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Moderating Student Assessment”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D20","is_correct":true,"text":"Assessment moderation should verify that grading decisions reflect the same learning outcomes and evidential standards across classes."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('836e8b0f-7ca0-56a7-8861-3c51066a24d7', '811545eb-47eb-5b48-be81-6950c203da08', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f92d6f2a-c282-5a2b-ab05-77285bfba57f', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Addressing Learning Needs","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17a2843b-f2ce-5bc5-8485-98ce91d61c66', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D01","left":"assessment moderation","right":"модерация оценивания"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D02","left":"learning outcome","right":"результат обучения"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D03","left":"reasonable adjustment","right":"разумное приспособление"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D04","left":"formative feedback","right":"формирующая обратная связь"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D05","left":"safeguarding concern","right":"проблема безопасности учащегося"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D06","left":"mandatory reporting","right":"обязательное сообщение"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D07","left":"confidentiality boundary","right":"граница конфиденциальности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51cc128c-bdd3-5e12-8a6c-7cbe53216058', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D08","is_correct":true,"text":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b35f54f0-c0e5-5cd6-aedd-fc8c49f5eda8', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Разумное приспособление устраняет ненужный барьер, сохраняя компетенцию, которую должно измерять оценивание.","target_language":"en","word_bank":["A","reasonable","adjustment","removes","an","unnecessary","barrier","while","preserving","the","competence","that","the","assessment","is","intended","to","measure","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b48510b5-743b-51da-9455-66c90b3a649a', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"learning outcome","instruction":"Выберите подходящее слово.","options":["learning outcome","safeguarding concern","confidentiality boundary"],"sentence_template":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4786a139-c25b-5cf3-a16c-f02333b9555f', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","reasonable","adjustment","removes","an","unnecessary","barrier","while","preserving","the","competence","that","the","assessment","is","intended","to","measure","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","measure","to","intended","is","assessment","the","that","competence","the","preserving","while","barrier","unnecessary","an","removes","adjustment","reasonable","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('814bc062-09c7-5c1f-877a-00fe53ffc825', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d300f7e4-70af-5d13-a8ca-1199ea610b0d', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Разумное приспособление устраняет ненужный барьер, сохраняя компетенцию, которую должно измерять оценивание. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e028b60-d812-5c2c-b49e-159acb660883', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure.","translation":"Разумное приспособление устраняет ненужный барьер, сохраняя компетенцию, которую должно измерять оценивание.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Addressing Learning Needs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4ab928f-7513-5c4f-84f0-666f94130e94', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“learning outcome” means a capability learners should demonstrate.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D11","is_correct":true,"text":"a capability learners should demonstrate"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D12","is_correct":false,"text":"support removing disadvantage without changing standards"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D13","is_correct":false,"text":"guidance intended to improve learning before final assessment"}],"word":"learning outcome"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61e99df7-dfed-5e4a-9391-24b14d97aff8', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure.","explanation":"The missing professional term is “learning outcome”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"learning outcome","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D14","is_correct":true},{"audio_text":"formative feedback","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D15","is_correct":false},{"audio_text":"mandatory reporting","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D16","is_correct":false}],"sentence_template":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85bf2c60-c386-5bfd-ab0b-c1f890a59dd5', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"learning outcome","explanation":"The complete professional statement uses “learning outcome” precisely.","hint_prefix":"lear","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fa08d46-959d-5c62-834b-d6eb8af93c64', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"assessment moderation","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D17","text":"assessment moderation"},{"audio_text":"learning outcome","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D18","text":"learning outcome"},{"audio_text":"reasonable adjustment","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D19","text":"reasonable adjustment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7d4d7b2-5f72-5640-8350-e81dc61e5123', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Addressing Learning Needs”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D20","is_correct":true,"text":"A reasonable adjustment removes an unnecessary barrier while preserving the competence that the assessment is intended to measure."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('836e8b0f-7ca0-56a7-8861-3c51066a24d7', 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Escalating a Safeguarding Concern","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cde9666a-8f9c-5476-ab4a-4a48acc8682d', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D01","left":"assessment moderation","right":"модерация оценивания"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D02","left":"learning outcome","right":"результат обучения"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D03","left":"reasonable adjustment","right":"разумное приспособление"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D04","left":"formative feedback","right":"формирующая обратная связь"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D05","left":"safeguarding concern","right":"проблема безопасности учащегося"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D06","left":"mandatory reporting","right":"обязательное сообщение"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D07","left":"confidentiality boundary","right":"граница конфиденциальности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c75b47ee-f277-5e0b-aee6-c8950c417d34', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D08","is_correct":true,"text":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c85b78b1-42e1-508c-8a68-6d7760a97166', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Проблема безопасности учащегося превышает обычные границы конфиденциальности, когда обязательное сообщение требует передачи информации по установленной процедуре.","target_language":"en","word_bank":["A","safeguarding","concern","overrides","ordinary","confidentiality","boundaries","when","mandatory","reporting","requires","information","to","be","shared","through","the","designated","process","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a4a85dd-11f8-5236-9969-e76cabf13cf2', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reasonable adjustment","instruction":"Выберите подходящее слово.","options":["reasonable adjustment","mandatory reporting","assessment moderation"],"sentence_template":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59796a8b-1b5d-5e09-88bc-62829dbe37bc', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","safeguarding","concern","overrides","ordinary","confidentiality","boundaries","when","mandatory","reporting","requires","information","to","be","shared","through","the","designated","process","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","process","designated","the","through","shared","be","to","information","requires","reporting","mandatory","when","boundaries","confidentiality","ordinary","overrides","concern","safeguarding","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3444e7c-ca06-5b50-bd7c-749e4d177630', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4bacb87-321c-5abe-a5d1-6be734e4d652', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Проблема безопасности учащегося превышает обычные границы конфиденциальности, когда обязательное сообщение требует передачи информации по установленной процедуре. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2259c400-28ba-5a5a-b4a3-1b349aa64ee1', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process.","translation":"Проблема безопасности учащегося превышает обычные границы конфиденциальности, когда обязательное сообщение требует передачи информации по установленной процедуре.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Escalating a Safeguarding Concern"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a5d4c6f-5f1d-5168-bbea-c8c3153d3ada', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reasonable adjustment” means support removing disadvantage without changing standards.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D11","is_correct":true,"text":"support removing disadvantage without changing standards"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D12","is_correct":false,"text":"guidance intended to improve learning before final assessment"},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D13","is_correct":false,"text":"a warning that a learner may be at risk of harm"}],"word":"reasonable adjustment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('680d69c9-9e27-5c57-b046-78ea4c2776c0', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process.","explanation":"The missing professional term is “reasonable adjustment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reasonable adjustment","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D14","is_correct":true},{"audio_text":"safeguarding concern","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D15","is_correct":false},{"audio_text":"confidentiality boundary","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D16","is_correct":false}],"sentence_template":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27725399-7e61-5746-b11e-0f8d98512d63', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reasonable adjustment","explanation":"The complete professional statement uses “reasonable adjustment” precisely.","hint_prefix":"reas","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56c61f17-7b16-55ca-a606-883ed172956d', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"assessment moderation","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D17","text":"assessment moderation"},{"audio_text":"learning outcome","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D18","text":"learning outcome"},{"audio_text":"reasonable adjustment","id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D19","text":"reasonable adjustment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c1d5389-6915-5472-9559-1e661a0fbaca', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Escalating a Safeguarding Concern”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D20","is_correct":true,"text":"A safeguarding concern overrides ordinary confidentiality boundaries when mandatory reporting requires information to be shared through the designated process."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_EDUCATION_ASSESSMENT_AND_SAFEGUARDING_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('836e8b0f-7ca0-56a7-8861-3c51066a24d7', 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef2dc9b3-3382-5d96-bed1-6f311a20362d', 'en', 'assessment moderation', 'модерация оценивания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2df37910-f1fb-56b1-99cd-fde8e220ee70', 'en', 'learning outcome', 'результат обучения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95325a2a-cfd1-53ed-8d9f-19b047780d21', 'en', 'reasonable adjustment', 'разумное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc7bffc9-5481-5695-ac44-ac72fec9928a', 'en', 'formative feedback', 'формирующая обратная связь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df4b659a-540b-5673-b4b6-b60f102ee5d6', 'en', 'safeguarding concern', 'проблема безопасности учащегося', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92331420-c54b-53d8-bde0-5b19b40b7a8a', 'en', 'mandatory reporting', 'обязательное сообщение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21b6450d-51fe-598c-b4b0-05b308a54324', 'en', 'confidentiality boundary', 'граница конфиденциальности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef2dc9b3-3382-5d96-bed1-6f311a20362d', 'en', 'assessment moderation', 'модерация оценивания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2df37910-f1fb-56b1-99cd-fde8e220ee70', 'en', 'learning outcome', 'результат обучения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95325a2a-cfd1-53ed-8d9f-19b047780d21', 'en', 'reasonable adjustment', 'разумное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc7bffc9-5481-5695-ac44-ac72fec9928a', 'en', 'formative feedback', 'формирующая обратная связь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df4b659a-540b-5673-b4b6-b60f102ee5d6', 'en', 'safeguarding concern', 'проблема безопасности учащегося', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92331420-c54b-53d8-bde0-5b19b40b7a8a', 'en', 'mandatory reporting', 'обязательное сообщение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21b6450d-51fe-598c-b4b0-05b308a54324', 'en', 'confidentiality boundary', 'граница конфиденциальности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef2dc9b3-3382-5d96-bed1-6f311a20362d', 'en', 'assessment moderation', 'модерация оценивания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2df37910-f1fb-56b1-99cd-fde8e220ee70', 'en', 'learning outcome', 'результат обучения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95325a2a-cfd1-53ed-8d9f-19b047780d21', 'en', 'reasonable adjustment', 'разумное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc7bffc9-5481-5695-ac44-ac72fec9928a', 'en', 'formative feedback', 'формирующая обратная связь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df4b659a-540b-5673-b4b6-b60f102ee5d6', 'en', 'safeguarding concern', 'проблема безопасности учащегося', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92331420-c54b-53d8-bde0-5b19b40b7a8a', 'en', 'mandatory reporting', 'обязательное сообщение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21b6450d-51fe-598c-b4b0-05b308a54324', 'en', 'confidentiality boundary', 'граница конфиденциальности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, '811545eb-47eb-5b48-be81-6950c203da08', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'assessment moderation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, '811545eb-47eb-5b48-be81-6950c203da08', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'learning outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, '811545eb-47eb-5b48-be81-6950c203da08', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, '811545eb-47eb-5b48-be81-6950c203da08', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'formative feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, '811545eb-47eb-5b48-be81-6950c203da08', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'safeguarding concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, '811545eb-47eb-5b48-be81-6950c203da08', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'mandatory reporting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, '811545eb-47eb-5b48-be81-6950c203da08', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidentiality boundary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'assessment moderation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'learning outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'formative feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'safeguarding concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'mandatory reporting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'f92d6f2a-c282-5a2b-ab05-77285bfba57f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidentiality boundary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'assessment moderation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'learning outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'formative feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'safeguarding concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'mandatory reporting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '836e8b0f-7ca0-56a7-8861-3c51066a24d7', id, 'e562e6b1-1a5f-59e8-a689-f38bf52cdf8f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidentiality boundary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
