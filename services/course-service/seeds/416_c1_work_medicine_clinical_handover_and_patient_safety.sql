-- Track: C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('fe99e02b-1271-5785-8643-f23001be3d0e', 'C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY', 'Медицина, передача клинической информации и безопасность пациентов', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Медицина, передача клинической информации и безопасность пациентов» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Medicine, Clinical Handover and Patient Safety","ru":"Медицина, передача клинической информации и безопасность пациентов"}'::jsonb, '{"en":"Develop advanced C1 professional communication for medicine, clinical handover and patient safety through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Медицина, передача клинической информации и безопасность пациентов» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ab8e924d-6622-5a1a-84ee-952c8bae59c2', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Structuring a Clinical Handover","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('665e816b-1b3b-5f89-85a2-ca4592014450', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D01","left":"clinical handover","right":"передача клинической информации"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D02","left":"presenting complaint","right":"основная жалоба пациента"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D03","left":"differential diagnosis","right":"дифференциальный диагноз"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D04","left":"contraindication","right":"противопоказание"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D05","left":"clinical deterioration","right":"ухудшение состояния пациента"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D06","left":"escalation protocol","right":"протокол эскалации"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D07","left":"near miss","right":"едва не произошедший инцидент"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11890c7c-ae92-500d-a405-22165d9aaa4a', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D08","is_correct":true,"text":"A clinical handover should distinguish the presenting complaint from the working diagnosis and state what requires immediate review."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae8d317f-264b-5d35-a2cc-eacff1c6920f', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A clinical handover should distinguish the presenting complaint from the working diagnosis and state what requires immediate review.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Передача клинической информации должна отделять основную жалобу от рабочего диагноза и указывать, что требует немедленной проверки.","target_language":"en","word_bank":["A","clinical","handover","should","distinguish","the","presenting","complaint","from","the","working","diagnosis","and","state","what","requires","immediate","review","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31146443-a60e-5951-8d8d-1e6ab22b3a32', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"clinical handover","instruction":"Выберите подходящее слово.","options":["clinical handover","contraindication","escalation protocol"],"sentence_template":"A ___ should distinguish the presenting complaint from the working diagnosis and state what requires immediate review."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c18e183-fa2b-53aa-869e-875ffe206c15', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","clinical","handover","should","distinguish","the","presenting","complaint","from","the","working","diagnosis","and","state","what","requires","immediate","review","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","review","immediate","requires","what","state","and","diagnosis","working","the","from","complaint","presenting","the","distinguish","should","handover","clinical","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35fdb7e6-e15e-5f45-aeec-16a495cdec0d', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A clinical handover should distinguish the presenting complaint from the working diagnosis and state what requires immediate review. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b881bbd5-0134-5b76-90be-29c238d44201', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A clinical handover should distinguish the presenting complaint from the working diagnosis and state what requires immediate review. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Передача клинической информации должна отделять основную жалобу от рабочего диагноза и указывать, что требует немедленной проверки. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6d29c85-49cc-5554-bc91-eb74818c0784', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"A clinical handover should distinguish the presenting complaint from the working diagnosis and state what requires immediate review.","translation":"Передача клинической информации должна отделять основную жалобу от рабочего диагноза и указывать, что требует немедленной проверки.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Structuring a Clinical Handover"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae93341b-494e-5d62-9dad-e92fe0f7cfcc', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“clinical handover” means the structured transfer of patient information and responsibility.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D11","is_correct":true,"text":"the structured transfer of patient information and responsibility"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D12","is_correct":false,"text":"the main symptom or problem reported by a patient"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D13","is_correct":false,"text":"a ranked set of possible explanations for symptoms"}],"word":"clinical handover"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8873280d-c0ed-5d34-96d8-485ef54234ff', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A clinical handover should distinguish the presenting complaint from the working diagnosis and state what requires immediate review.","explanation":"The missing professional term is “clinical handover”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"clinical handover","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D14","is_correct":true},{"audio_text":"differential diagnosis","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D15","is_correct":false},{"audio_text":"clinical deterioration","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D16","is_correct":false}],"sentence_template":"A ___ should distinguish the presenting complaint from the working diagnosis and state what requires immediate review."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('031f17a4-34a6-5f39-b4d3-ad7f3b1964d8', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"clinical handover","explanation":"The complete professional statement uses “clinical handover” precisely.","hint_prefix":"clin","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should distinguish the presenting complaint from the working diagnosis and state what requires immediate review."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cd0fef6-1753-5fcc-850b-54ebbe8482c7', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"clinical handover","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D17","text":"clinical handover"},{"audio_text":"presenting complaint","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D18","text":"presenting complaint"},{"audio_text":"differential diagnosis","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D19","text":"differential diagnosis"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d94ef1e-cf2e-5280-b033-03c8409d3c22', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Structuring a Clinical Handover”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D20","is_correct":true,"text":"A clinical handover should distinguish the presenting complaint from the working diagnosis and state what requires immediate review."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fe99e02b-1271-5785-8643-f23001be3d0e', 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e5c89db3-a3ad-5398-a0f1-14ceb1155063', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Escalating Patient Deterioration","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65b590d9-89eb-576c-beef-58223dbe5b82', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D01","left":"clinical handover","right":"передача клинической информации"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D02","left":"presenting complaint","right":"основная жалоба пациента"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D03","left":"differential diagnosis","right":"дифференциальный диагноз"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D04","left":"contraindication","right":"противопоказание"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D05","left":"clinical deterioration","right":"ухудшение состояния пациента"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D06","left":"escalation protocol","right":"протокол эскалации"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D07","left":"near miss","right":"едва не произошедший инцидент"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90720026-cbfc-5fe8-9aad-35fe935d07e0', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D08","is_correct":true,"text":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2395f0a8-e52d-501d-b160-402dc374996a', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ухудшение состояния пациента требует быстрой эскалации по протоколу, особенно когда лечение может быть ограничено противопоказанием.","target_language":"en","word_bank":["Clinical","deterioration","requires","prompt","escalation","under","the","protocol",",","particularly","when","treatment","may","be","limited","by","a","contraindication","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('912090ee-e358-5e23-b995-1f258a281b60', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"presenting complaint","instruction":"Выберите подходящее слово.","options":["presenting complaint","clinical deterioration","near miss"],"sentence_template":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('498d4827-05a2-5aef-a9ba-05a4dfb12ec5', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Clinical","deterioration","requires","prompt","escalation","under","the","protocol",",","particularly","when","treatment","may","be","limited","by","a","contraindication","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","contraindication","a","by","limited","be","may","treatment","when","particularly",",","protocol","the","under","escalation","prompt","requires","deterioration","Clinical"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05ab0796-b00e-5f83-b621-4a1fa5212835', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eba1034c-59e4-5234-9fe8-59890a8d45dd', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Ухудшение состояния пациента требует быстрой эскалации по протоколу, особенно когда лечение может быть ограничено противопоказанием. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af32031e-c1f8-567d-a738-1c2c34fb651a', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication.","translation":"Ухудшение состояния пациента требует быстрой эскалации по протоколу, особенно когда лечение может быть ограничено противопоказанием.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Escalating Patient Deterioration"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4000b6b-62d5-5c67-b15c-2d3be25e3d35', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“presenting complaint” means the main symptom or problem reported by a patient.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D11","is_correct":true,"text":"the main symptom or problem reported by a patient"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D12","is_correct":false,"text":"a ranked set of possible explanations for symptoms"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D13","is_correct":false,"text":"a reason a treatment may be unsafe"}],"word":"presenting complaint"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e489ea72-0b6a-5e98-bb12-84d2bb68ab8a', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication.","explanation":"The missing professional term is “presenting complaint”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"presenting complaint","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D14","is_correct":true},{"audio_text":"contraindication","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D15","is_correct":false},{"audio_text":"escalation protocol","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D16","is_correct":false}],"sentence_template":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5e8636d-b47c-577a-add9-c72b67f648c5', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"presenting complaint","explanation":"The complete professional statement uses “presenting complaint” precisely.","hint_prefix":"pres","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('581a5b01-bb2b-5663-a29d-48178673e125', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"clinical handover","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D17","text":"clinical handover"},{"audio_text":"presenting complaint","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D18","text":"presenting complaint"},{"audio_text":"differential diagnosis","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D19","text":"differential diagnosis"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('304d58be-da1b-5521-a39b-79d4fbe96860', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Escalating Patient Deterioration”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D20","is_correct":true,"text":"Clinical deterioration requires prompt escalation under the protocol, particularly when treatment may be limited by a contraindication."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fe99e02b-1271-5785-8643-f23001be3d0e', 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b7ba2edd-388b-594d-a8ef-bd0b90525d99', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Reviewing a Safety Incident","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f8987f8-6040-5813-8ffd-d4213b00d5a9', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D01","left":"clinical handover","right":"передача клинической информации"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D02","left":"presenting complaint","right":"основная жалоба пациента"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D03","left":"differential diagnosis","right":"дифференциальный диагноз"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D04","left":"contraindication","right":"противопоказание"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D05","left":"clinical deterioration","right":"ухудшение состояния пациента"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D06","left":"escalation protocol","right":"протокол эскалации"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D07","left":"near miss","right":"едва не произошедший инцидент"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db675e07-5399-5450-8466-dbf63d2f4def', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D08","is_correct":true,"text":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbcae9b1-c600-53b9-9ae4-0e5c66f066d8', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Едва не произошедший инцидент следует разбирать без обвинений, чтобы устранить пробелы в коммуникации и системные слабости до причинения вреда.","target_language":"en","word_bank":["A","near","miss","should","be","reviewed","without","blame","so","that","communication","gaps","and","system","weaknesses","can","be","corrected","before","harm","occurs","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e886e9b1-f2d9-5bba-b070-53c7f2d9c640', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"differential diagnosis","instruction":"Выберите подходящее слово.","options":["differential diagnosis","escalation protocol","clinical handover"],"sentence_template":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cf77818-9029-5793-b637-b472d00b1c59', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","near","miss","should","be","reviewed","without","blame","so","that","communication","gaps","and","system","weaknesses","can","be","corrected","before","harm","occurs","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","occurs","harm","before","corrected","be","can","weaknesses","system","and","gaps","communication","that","so","blame","without","reviewed","be","should","miss","near","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72f362a5-2a5c-5973-af96-6731c112ea8f', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce4e90b7-f195-5238-a6c4-b22dfc4bd025', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Едва не произошедший инцидент следует разбирать без обвинений, чтобы устранить пробелы в коммуникации и системные слабости до причинения вреда. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37757e4b-4868-5caf-b33e-7b7d5a2d9427', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs.","translation":"Едва не произошедший инцидент следует разбирать без обвинений, чтобы устранить пробелы в коммуникации и системные слабости до причинения вреда.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Reviewing a Safety Incident"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acfe1176-7b28-50ee-b93c-dc5e93a51883', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“differential diagnosis” means a ranked set of possible explanations for symptoms.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D11","is_correct":true,"text":"a ranked set of possible explanations for symptoms"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D12","is_correct":false,"text":"a reason a treatment may be unsafe"},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D13","is_correct":false,"text":"a worsening in a patient’s health status"}],"word":"differential diagnosis"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6970c07b-03b7-5ee1-8068-0312ba7ec81a', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs.","explanation":"The missing professional term is “differential diagnosis”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"differential diagnosis","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D14","is_correct":true},{"audio_text":"clinical deterioration","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D15","is_correct":false},{"audio_text":"near miss","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D16","is_correct":false}],"sentence_template":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f48cfc0-e9ad-505c-9cb0-5e35b3b1f2d2', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"differential diagnosis","explanation":"The complete professional statement uses “differential diagnosis” precisely.","hint_prefix":"diff","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04f46961-bc97-534d-9847-57af98e5d15b', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"clinical handover","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D17","text":"clinical handover"},{"audio_text":"presenting complaint","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D18","text":"presenting complaint"},{"audio_text":"differential diagnosis","id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D19","text":"differential diagnosis"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5f4682e-3686-532d-870c-6f8f41f38c2c', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Reviewing a Safety Incident”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D20","is_correct":true,"text":"A near miss should be reviewed without blame so that communication gaps and system weaknesses can be corrected before harm occurs."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_MEDICINE_CLINICAL_HANDOVER_AND_PATIENT_SAFETY_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fe99e02b-1271-5785-8643-f23001be3d0e', 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c0f6be02-c37c-54aa-be02-4fc00cc13e7a', 'en', 'clinical handover', 'передача клинической информации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('11772458-303e-56da-9c22-651ac13a19bc', 'en', 'presenting complaint', 'основная жалоба пациента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c6b5c81-e427-5408-abb4-28d986257d3a', 'en', 'differential diagnosis', 'дифференциальный диагноз', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b98f45-4e93-5fec-908d-151c85ad5b9f', 'en', 'contraindication', 'противопоказание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4db02fa-ff56-503d-a7b2-687d2ab3e9c5', 'en', 'clinical deterioration', 'ухудшение состояния пациента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c97df9b3-e18a-52ec-8aa7-19207bac1293', 'en', 'escalation protocol', 'протокол эскалации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08cebaf7-26ef-58dc-98a4-30ab821de72c', 'en', 'near miss', 'едва не произошедший инцидент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c0f6be02-c37c-54aa-be02-4fc00cc13e7a', 'en', 'clinical handover', 'передача клинической информации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('11772458-303e-56da-9c22-651ac13a19bc', 'en', 'presenting complaint', 'основная жалоба пациента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c6b5c81-e427-5408-abb4-28d986257d3a', 'en', 'differential diagnosis', 'дифференциальный диагноз', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b98f45-4e93-5fec-908d-151c85ad5b9f', 'en', 'contraindication', 'противопоказание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4db02fa-ff56-503d-a7b2-687d2ab3e9c5', 'en', 'clinical deterioration', 'ухудшение состояния пациента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c97df9b3-e18a-52ec-8aa7-19207bac1293', 'en', 'escalation protocol', 'протокол эскалации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08cebaf7-26ef-58dc-98a4-30ab821de72c', 'en', 'near miss', 'едва не произошедший инцидент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c0f6be02-c37c-54aa-be02-4fc00cc13e7a', 'en', 'clinical handover', 'передача клинической информации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('11772458-303e-56da-9c22-651ac13a19bc', 'en', 'presenting complaint', 'основная жалоба пациента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c6b5c81-e427-5408-abb4-28d986257d3a', 'en', 'differential diagnosis', 'дифференциальный диагноз', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b98f45-4e93-5fec-908d-151c85ad5b9f', 'en', 'contraindication', 'противопоказание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4db02fa-ff56-503d-a7b2-687d2ab3e9c5', 'en', 'clinical deterioration', 'ухудшение состояния пациента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c97df9b3-e18a-52ec-8aa7-19207bac1293', 'en', 'escalation protocol', 'протокол эскалации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08cebaf7-26ef-58dc-98a4-30ab821de72c', 'en', 'near miss', 'едва не произошедший инцидент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'clinical handover' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'presenting complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'differential diagnosis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'contraindication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'clinical deterioration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'ab8e924d-6622-5a1a-84ee-952c8bae59c2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'near miss' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'clinical handover' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'presenting complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'differential diagnosis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contraindication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'clinical deterioration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'e5c89db3-a3ad-5398-a0f1-14ceb1155063', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'near miss' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'clinical handover' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'presenting complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'differential diagnosis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contraindication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'clinical deterioration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fe99e02b-1271-5785-8643-f23001be3d0e', id, 'b7ba2edd-388b-594d-a8ef-bd0b90525d99', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'near miss' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
