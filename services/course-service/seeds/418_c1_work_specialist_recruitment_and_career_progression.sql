-- Track: C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('dd879471-edf6-5d66-8284-703c7c916b8c', 'C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION', 'Подбор специалистов и карьерное развитие', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Подбор специалистов и карьерное развитие» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Specialist Recruitment and Career Progression","ru":"Подбор специалистов и карьерное развитие"}'::jsonb, '{"en":"Develop advanced C1 professional communication for specialist recruitment and career progression through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Подбор специалистов и карьерное развитие» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d7bba5d8-a2a5-5cc9-846b-03e7f6260bea', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Defining Specialist Competence","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0df8077e-42c7-5c9d-a4fd-163abd3d8e5d', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D01","left":"competency framework","right":"модель компетенций"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D02","left":"professional accreditation","right":"профессиональная аккредитация"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D03","left":"technical depth","right":"глубина технических знаний"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D04","left":"transferable leadership","right":"переносимое лидерство"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D05","left":"evidence portfolio","right":"портфолио доказательств"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D06","left":"succession planning","right":"планирование преемственности"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D07","left":"progression pathway","right":"траектория карьерного роста"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('477a5098-592d-5541-bbf1-ef6555a3a89e', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D08","is_correct":true,"text":"The competency framework should separate mandatory professional accreditation from technical depth that can be developed after appointment."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1da4972d-cf65-528f-9a08-8504dc927cd4', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The competency framework should separate mandatory professional accreditation from technical depth that can be developed after appointment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Модель компетенций должна отделять обязательную профессиональную аккредитацию от глубины технических знаний, которую можно развить после назначения.","target_language":"en","word_bank":["The","competency","framework","should","separate","mandatory","professional","accreditation","from","technical","depth","that","can","be","developed","after","appointment","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02da4b9f-b46f-5f54-82e4-5765b7ce1978', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"competency framework","instruction":"Выберите подходящее слово.","options":["competency framework","transferable leadership","succession planning"],"sentence_template":"The ___ should separate mandatory professional accreditation from technical depth that can be developed after appointment."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6328a7e5-0c22-5cea-bbf8-4d2b85adface', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","competency","framework","should","separate","mandatory","professional","accreditation","from","technical","depth","that","can","be","developed","after","appointment","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","appointment","after","developed","be","can","that","depth","technical","from","accreditation","professional","mandatory","separate","should","framework","competency","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fa5c191-3b49-5689-8579-429aad17a692', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The competency framework should separate mandatory professional accreditation from technical depth that can be developed after appointment. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7796637d-6bbc-545f-8e0e-da163a4fc463', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The competency framework should separate mandatory professional accreditation from technical depth that can be developed after appointment. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Модель компетенций должна отделять обязательную профессиональную аккредитацию от глубины технических знаний, которую можно развить после назначения. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd20955c-af97-5d2a-ad07-ccbb6b80b56d', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The competency framework should separate mandatory professional accreditation from technical depth that can be developed after appointment.","translation":"Модель компетенций должна отделять обязательную профессиональную аккредитацию от глубины технических знаний, которую можно развить после назначения.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Defining Specialist Competence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d84cbc8-b9c9-542c-a0e0-4d590aa24f0b', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“competency framework” means a structured definition of capabilities required for a role.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D11","is_correct":true,"text":"a structured definition of capabilities required for a role"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D12","is_correct":false,"text":"formal recognition by an authorised professional body"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D13","is_correct":false,"text":"advanced expertise within a specialist field"}],"word":"competency framework"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b28ac37b-8609-5cea-886e-032bd9d235df', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The competency framework should separate mandatory professional accreditation from technical depth that can be developed after appointment.","explanation":"The missing professional term is “competency framework”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"competency framework","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D14","is_correct":true},{"audio_text":"technical depth","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D15","is_correct":false},{"audio_text":"evidence portfolio","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D16","is_correct":false}],"sentence_template":"The ___ should separate mandatory professional accreditation from technical depth that can be developed after appointment."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe91258e-a311-5a7b-aa1b-42955e84d5dd', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"competency framework","explanation":"The complete professional statement uses “competency framework” precisely.","hint_prefix":"comp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should separate mandatory professional accreditation from technical depth that can be developed after appointment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a668d38-3476-55cf-964b-a0fb50ede724', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competency framework","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D17","text":"competency framework"},{"audio_text":"professional accreditation","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D18","text":"professional accreditation"},{"audio_text":"technical depth","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D19","text":"technical depth"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9a0b138-83ae-522d-a4ec-29022c24e827', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Defining Specialist Competence”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D20","is_correct":true,"text":"The competency framework should separate mandatory professional accreditation from technical depth that can be developed after appointment."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dd879471-edf6-5d66-8284-703c7c916b8c', 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3946d10f-0e99-5cf9-a300-675c70d06106', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Evaluating Professional Evidence","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6caba335-5434-52f9-a7db-1d6bce85fac2', '3946d10f-0e99-5cf9-a300-675c70d06106', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D01","left":"competency framework","right":"модель компетенций"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D02","left":"professional accreditation","right":"профессиональная аккредитация"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D03","left":"technical depth","right":"глубина технических знаний"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D04","left":"transferable leadership","right":"переносимое лидерство"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D05","left":"evidence portfolio","right":"портфолио доказательств"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D06","left":"succession planning","right":"планирование преемственности"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D07","left":"progression pathway","right":"траектория карьерного роста"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77241444-9719-5ade-a642-4fbed9193147', '3946d10f-0e99-5cf9-a300-675c70d06106', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D08","is_correct":true,"text":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('297889b8-bcba-5d70-83be-6fac00c2eb7f', '3946d10f-0e99-5cf9-a300-675c70d06106', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Портфолио доказательств наиболее убедительно демонстрирует переносимое лидерство через решения, ограничения, действия и измеримые результаты.","target_language":"en","word_bank":["An","evidence","portfolio","demonstrates","transferable","leadership","most","convincingly","through","decisions",",","constraints",",","actions",",","and","measurable","outcomes","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd1800c7-74ad-5601-98ae-6870ae87027d', '3946d10f-0e99-5cf9-a300-675c70d06106', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"professional accreditation","instruction":"Выберите подходящее слово.","options":["professional accreditation","evidence portfolio","progression pathway"],"sentence_template":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('018a52a9-f14e-503d-a075-e620d61c8b55', '3946d10f-0e99-5cf9-a300-675c70d06106', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","evidence","portfolio","demonstrates","transferable","leadership","most","convincingly","through","decisions",",","constraints",",","actions",",","and","measurable","outcomes","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","outcomes","measurable","and",",","actions",",","constraints",",","decisions","through","convincingly","most","leadership","transferable","demonstrates","portfolio","evidence","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ab4b70c-f055-5db3-983d-1e9cae86f0b2', '3946d10f-0e99-5cf9-a300-675c70d06106', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa53652b-0d7c-5a09-b32f-02b26759ee16', '3946d10f-0e99-5cf9-a300-675c70d06106', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Портфолио доказательств наиболее убедительно демонстрирует переносимое лидерство через решения, ограничения, действия и измеримые результаты. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0566f63-cdc9-5ceb-aaac-fc8aa79cdb65', '3946d10f-0e99-5cf9-a300-675c70d06106', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes.","translation":"Портфолио доказательств наиболее убедительно демонстрирует переносимое лидерство через решения, ограничения, действия и измеримые результаты.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Evaluating Professional Evidence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ec6cdd5-dace-5c04-b0b2-30ba6a9de9f7', '3946d10f-0e99-5cf9-a300-675c70d06106', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“professional accreditation” means formal recognition by an authorised professional body.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D11","is_correct":true,"text":"formal recognition by an authorised professional body"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D12","is_correct":false,"text":"advanced expertise within a specialist field"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D13","is_correct":false,"text":"leadership ability applicable across contexts"}],"word":"professional accreditation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49bae396-43c3-5f2c-b10b-eccf3e6cb076', '3946d10f-0e99-5cf9-a300-675c70d06106', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes.","explanation":"The missing professional term is “professional accreditation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"professional accreditation","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D14","is_correct":true},{"audio_text":"transferable leadership","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D15","is_correct":false},{"audio_text":"succession planning","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D16","is_correct":false}],"sentence_template":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37aa45c0-1926-5fd6-ad58-78e03a6e0ea0', '3946d10f-0e99-5cf9-a300-675c70d06106', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"professional accreditation","explanation":"The complete professional statement uses “professional accreditation” precisely.","hint_prefix":"prof","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8334671-03c3-5bb5-aa24-b2c9e5cf05f4', '3946d10f-0e99-5cf9-a300-675c70d06106', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competency framework","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D17","text":"competency framework"},{"audio_text":"professional accreditation","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D18","text":"professional accreditation"},{"audio_text":"technical depth","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D19","text":"technical depth"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('972226b8-e970-532d-b711-3dcc0b8a7c7a', '3946d10f-0e99-5cf9-a300-675c70d06106', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Evaluating Professional Evidence”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D20","is_correct":true,"text":"An evidence portfolio demonstrates transferable leadership most convincingly through decisions, constraints, actions, and measurable outcomes."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dd879471-edf6-5d66-8284-703c7c916b8c', '3946d10f-0e99-5cf9-a300-675c70d06106', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Negotiating Career Progression","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('423d6458-5da1-5f64-b162-ca21cd39c39f', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D01","left":"competency framework","right":"модель компетенций"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D02","left":"professional accreditation","right":"профессиональная аккредитация"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D03","left":"technical depth","right":"глубина технических знаний"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D04","left":"transferable leadership","right":"переносимое лидерство"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D05","left":"evidence portfolio","right":"портфолио доказательств"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D06","left":"succession planning","right":"планирование преемственности"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D07","left":"progression pathway","right":"траектория карьерного роста"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e22dd517-516f-5275-90a9-168978912bdb', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D08","is_correct":true,"text":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('984c5530-8f95-5125-9991-441dd68bddb0', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедительная траектория роста связывает профессиональное мастерство с большей ответственностью, не предполагая, что каждый эксперт должен стать руководителем людей.","target_language":"en","word_bank":["A","credible","progression","pathway","links","specialist","excellence","to","broader","responsibility","without","assuming","that","every","expert","must","become","a","people","manager","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1b26144-3940-5655-a213-c6aea94b2a81', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"technical depth","instruction":"Выберите подходящее слово.","options":["technical depth","succession planning","competency framework"],"sentence_template":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be428ab4-2810-5127-90e6-0d39f503f612', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","credible","progression","pathway","links","specialist","excellence","to","broader","responsibility","without","assuming","that","every","expert","must","become","a","people","manager","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","manager","people","a","become","must","expert","every","that","assuming","without","responsibility","broader","to","excellence","specialist","links","pathway","progression","credible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8efdd751-05d2-5dc9-ac45-0d20e808d88f', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46432f0e-ac77-5ec0-99b4-e39c2f668297', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Убедительная траектория роста связывает профессиональное мастерство с большей ответственностью, не предполагая, что каждый эксперт должен стать руководителем людей. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6220b4b7-26d7-595a-85f8-990b70e0439a', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager.","translation":"Убедительная траектория роста связывает профессиональное мастерство с большей ответственностью, не предполагая, что каждый эксперт должен стать руководителем людей.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Negotiating Career Progression"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7fca96e-3d5b-52e7-a122-3124652363b6', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“technical depth” means advanced expertise within a specialist field.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D11","is_correct":true,"text":"advanced expertise within a specialist field"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D12","is_correct":false,"text":"leadership ability applicable across contexts"},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D13","is_correct":false,"text":"documented examples demonstrating professional capability"}],"word":"technical depth"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddc155b4-17d2-58b9-adf6-549a7214d3ba', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager.","explanation":"The missing professional term is “technical depth”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"technical depth","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D14","is_correct":true},{"audio_text":"evidence portfolio","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D15","is_correct":false},{"audio_text":"progression pathway","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D16","is_correct":false}],"sentence_template":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('520e68c1-579a-573a-a1c5-72cc40d3bca8', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"technical depth","explanation":"The complete professional statement uses “technical depth” precisely.","hint_prefix":"tech","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cf54e04-7937-5e7c-9cd1-52b2dfa30649', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competency framework","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D17","text":"competency framework"},{"audio_text":"professional accreditation","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D18","text":"professional accreditation"},{"audio_text":"technical depth","id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D19","text":"technical depth"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1209bac-a765-5a92-854d-6d675a64cd67', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Negotiating Career Progression”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D20","is_correct":true,"text":"A credible progression pathway links specialist excellence to broader responsibility without assuming that every expert must become a people manager."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_SPECIALIST_RECRUITMENT_AND_CAREER_PROGRESSION_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dd879471-edf6-5d66-8284-703c7c916b8c', 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c677d78b-d7d2-5762-8a35-7a5138eadc69', 'en', 'competency framework', 'модель компетенций', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3cf2bf8-d8a0-5f33-98d4-a0aab930dbee', 'en', 'professional accreditation', 'профессиональная аккредитация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3459a66b-7314-5433-8cb0-4f9e2016edb4', 'en', 'technical depth', 'глубина технических знаний', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7366c2d-c4ea-5e40-a2b2-2a95656a2a2e', 'en', 'transferable leadership', 'переносимое лидерство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fedb0ff8-5bbd-5a39-84e9-015a84f7c628', 'en', 'evidence portfolio', 'портфолио доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d13cb1ad-bf8f-51f0-a799-dfc333359983', 'en', 'succession planning', 'планирование преемственности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a76e8bb9-0f92-5287-827e-b11c6adfadb9', 'en', 'progression pathway', 'траектория карьерного роста', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c677d78b-d7d2-5762-8a35-7a5138eadc69', 'en', 'competency framework', 'модель компетенций', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3cf2bf8-d8a0-5f33-98d4-a0aab930dbee', 'en', 'professional accreditation', 'профессиональная аккредитация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3459a66b-7314-5433-8cb0-4f9e2016edb4', 'en', 'technical depth', 'глубина технических знаний', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7366c2d-c4ea-5e40-a2b2-2a95656a2a2e', 'en', 'transferable leadership', 'переносимое лидерство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fedb0ff8-5bbd-5a39-84e9-015a84f7c628', 'en', 'evidence portfolio', 'портфолио доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d13cb1ad-bf8f-51f0-a799-dfc333359983', 'en', 'succession planning', 'планирование преемственности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a76e8bb9-0f92-5287-827e-b11c6adfadb9', 'en', 'progression pathway', 'траектория карьерного роста', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c677d78b-d7d2-5762-8a35-7a5138eadc69', 'en', 'competency framework', 'модель компетенций', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3cf2bf8-d8a0-5f33-98d4-a0aab930dbee', 'en', 'professional accreditation', 'профессиональная аккредитация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3459a66b-7314-5433-8cb0-4f9e2016edb4', 'en', 'technical depth', 'глубина технических знаний', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7366c2d-c4ea-5e40-a2b2-2a95656a2a2e', 'en', 'transferable leadership', 'переносимое лидерство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fedb0ff8-5bbd-5a39-84e9-015a84f7c628', 'en', 'evidence portfolio', 'портфолио доказательств', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d13cb1ad-bf8f-51f0-a799-dfc333359983', 'en', 'succession planning', 'планирование преемственности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a76e8bb9-0f92-5287-827e-b11c6adfadb9', 'en', 'progression pathway', 'траектория карьерного роста', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'competency framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional accreditation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical depth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable leadership' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence portfolio' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'succession planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'd7bba5d8-a2a5-5cc9-846b-03e7f6260bea', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'progression pathway' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, '3946d10f-0e99-5cf9-a300-675c70d06106', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'competency framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, '3946d10f-0e99-5cf9-a300-675c70d06106', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional accreditation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, '3946d10f-0e99-5cf9-a300-675c70d06106', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical depth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, '3946d10f-0e99-5cf9-a300-675c70d06106', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable leadership' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, '3946d10f-0e99-5cf9-a300-675c70d06106', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence portfolio' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, '3946d10f-0e99-5cf9-a300-675c70d06106', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'succession planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, '3946d10f-0e99-5cf9-a300-675c70d06106', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'progression pathway' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'competency framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional accreditation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical depth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable leadership' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence portfolio' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'succession planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd879471-edf6-5d66-8284-703c7c916b8c', id, 'c2f0a5aa-8601-58c6-ab43-c0760fa71ac7', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'progression pathway' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
