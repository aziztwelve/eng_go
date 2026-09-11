-- Track: C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('66413ac6-d624-56b0-9ab6-2603640ce22f', 'C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY', 'Реагирование на ИТ-инциденты и кибербезопасность', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Реагирование на ИТ-инциденты и кибербезопасность» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Technology Incident Response and Cybersecurity","ru":"Реагирование на ИТ-инциденты и кибербезопасность"}'::jsonb, '{"en":"Develop advanced C1 professional communication for technology incident response and cybersecurity through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Реагирование на ИТ-инциденты и кибербезопасность» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('68d3b5a8-c9c9-5044-8962-6121d2e2a4df', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Triaging a Production Incident","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c38e58a-9f4f-5c0f-ae2c-1126b73fdcc7', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D01","left":"production outage","right":"сбой рабочей системы"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D02","left":"incident severity","right":"критичность инцидента"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D03","left":"attack vector","right":"вектор атаки"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D04","left":"containment measure","right":"мера сдерживания"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D05","left":"data exfiltration","right":"несанкционированный вывод данных"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D06","left":"service restoration","right":"восстановление сервиса"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D07","left":"post-incident review","right":"разбор после инцидента"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eed462d4-fe4b-55a9-801a-2b64f2cc7921', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D08","is_correct":true,"text":"The production outage meets the highest incident severity because it affects authentication across every customer-facing service."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4376620e-6759-5efe-9a3c-62eb3f9dcc54', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The production outage meets the highest incident severity because it affects authentication across every customer-facing service.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сбой рабочей системы соответствует наивысшей критичности, поскольку затрагивает аутентификацию во всех клиентских сервисах.","target_language":"en","word_bank":["The","production","outage","meets","the","highest","incident","severity","because","it","affects","authentication","across","every","customer-facing","service","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18542bcb-3fcb-5a78-bae6-1e0e3e3d012c', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"production outage","instruction":"Выберите подходящее слово.","options":["production outage","containment measure","service restoration"],"sentence_template":"The ___ meets the highest incident severity because it affects authentication across every customer-facing service."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d28325eb-2f99-5511-9aab-47b53eb991b8', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","production","outage","meets","the","highest","incident","severity","because","it","affects","authentication","across","every","customer-facing","service","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","service","customer-facing","every","across","authentication","affects","it","because","severity","incident","highest","the","meets","outage","production","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e955b371-7eb6-5b67-a23e-0adb0d8d947a', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The production outage meets the highest incident severity because it affects authentication across every customer-facing service. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4d87f39-76d2-555a-abf5-40007e9bec5b', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The production outage meets the highest incident severity because it affects authentication across every customer-facing service. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Сбой рабочей системы соответствует наивысшей критичности, поскольку затрагивает аутентификацию во всех клиентских сервисах. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8d514aa-30c0-5668-ba82-b0713ae52d7a', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The production outage meets the highest incident severity because it affects authentication across every customer-facing service.","translation":"Сбой рабочей системы соответствует наивысшей критичности, поскольку затрагивает аутентификацию во всех клиентских сервисах.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Triaging a Production Incident"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff8a4ea0-724b-5c7c-91da-f2e8b4962cf0', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“production outage” means a loss of availability in a live technical service.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D11","is_correct":true,"text":"a loss of availability in a live technical service"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D12","is_correct":false,"text":"the classification of operational impact and urgency"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D13","is_correct":false,"text":"the route used to gain unauthorised access"}],"word":"production outage"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0baaedd2-91b0-5342-8d61-9d1d4b908944', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The production outage meets the highest incident severity because it affects authentication across every customer-facing service.","explanation":"The missing professional term is “production outage”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"production outage","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D14","is_correct":true},{"audio_text":"attack vector","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D15","is_correct":false},{"audio_text":"data exfiltration","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D16","is_correct":false}],"sentence_template":"The ___ meets the highest incident severity because it affects authentication across every customer-facing service."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59a533c5-de3c-5ef7-900f-a8257fa7e6e2', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"production outage","explanation":"The complete professional statement uses “production outage” precisely.","hint_prefix":"prod","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ meets the highest incident severity because it affects authentication across every customer-facing service."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba237298-5e6c-5b79-bb2d-20909f4b81bf', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"production outage","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D17","text":"production outage"},{"audio_text":"incident severity","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D18","text":"incident severity"},{"audio_text":"attack vector","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D19","text":"attack vector"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dce8360-6d4b-5bba-92c6-727a6ad6c48b', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Triaging a Production Incident”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D20","is_correct":true,"text":"The production outage meets the highest incident severity because it affects authentication across every customer-facing service."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('66413ac6-d624-56b0-9ab6-2603640ce22f', '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c2962226-b0cf-5d79-b701-27eb4f389bdd', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Containing a Security Breach","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08611165-b341-56ac-b0a1-3cb68a21ca11', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D01","left":"production outage","right":"сбой рабочей системы"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D02","left":"incident severity","right":"критичность инцидента"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D03","left":"attack vector","right":"вектор атаки"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D04","left":"containment measure","right":"мера сдерживания"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D05","left":"data exfiltration","right":"несанкционированный вывод данных"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D06","left":"service restoration","right":"восстановление сервиса"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D07","left":"post-incident review","right":"разбор после инцидента"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21e42be6-e178-52a0-a569-44a3b176d33e', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D08","is_correct":true,"text":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a5966c2-b8bd-5ebb-ba1f-6a8b9d9b1f0c', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Немедленная мера сдерживания блокирует предполагаемый вектор атаки, сохраняя доказательства для оценки возможного вывода данных.","target_language":"en","word_bank":["The","immediate","containment","measure","blocks","the","suspected","attack","vector","while","preserving","evidence","needed","to","assess","possible","data","exfiltration","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37f12cb3-77c4-5a1b-8616-84a71cf5ec84', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"incident severity","instruction":"Выберите подходящее слово.","options":["incident severity","data exfiltration","post-incident review"],"sentence_template":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5e9674b-b721-53f6-874f-abc82a63c518', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","immediate","containment","measure","blocks","the","suspected","attack","vector","while","preserving","evidence","needed","to","assess","possible","data","exfiltration","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","exfiltration","data","possible","assess","to","needed","evidence","preserving","while","vector","attack","suspected","the","blocks","measure","containment","immediate","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebd94f04-6891-5650-97b4-73b076967ec0', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('caf046c1-c976-542c-9caf-cb3a836d9e3e', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Немедленная мера сдерживания блокирует предполагаемый вектор атаки, сохраняя доказательства для оценки возможного вывода данных. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d71dad3b-3d6c-5182-a29f-6603d00b1140', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration.","translation":"Немедленная мера сдерживания блокирует предполагаемый вектор атаки, сохраняя доказательства для оценки возможного вывода данных.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Containing a Security Breach"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a78feb7f-7d5c-5ed7-8ba0-55966c1a037d', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“incident severity” means the classification of operational impact and urgency.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D11","is_correct":true,"text":"the classification of operational impact and urgency"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D12","is_correct":false,"text":"the route used to gain unauthorised access"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D13","is_correct":false,"text":"an action limiting the spread or impact of an incident"}],"word":"incident severity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e98d6974-35e5-5a9c-a09e-65e06ec87b2c', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration.","explanation":"The missing professional term is “incident severity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"incident severity","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D14","is_correct":true},{"audio_text":"containment measure","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D15","is_correct":false},{"audio_text":"service restoration","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D16","is_correct":false}],"sentence_template":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85f0545a-ca31-5860-aa08-ab2dd3792d13', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"incident severity","explanation":"The complete professional statement uses “incident severity” precisely.","hint_prefix":"inci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e72c30dd-396d-5d53-a6e5-944cbb7177d4', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"production outage","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D17","text":"production outage"},{"audio_text":"incident severity","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D18","text":"incident severity"},{"audio_text":"attack vector","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D19","text":"attack vector"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a104c91-ed0d-5d1b-8a18-2b8b4a2e444d', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Containing a Security Breach”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D20","is_correct":true,"text":"The immediate containment measure blocks the suspected attack vector while preserving evidence needed to assess possible data exfiltration."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('66413ac6-d624-56b0-9ab6-2603640ce22f', 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Leading a Post-Incident Review","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1753f8f9-6fae-5b3c-b855-a29ae081d780', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D01","left":"production outage","right":"сбой рабочей системы"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D02","left":"incident severity","right":"критичность инцидента"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D03","left":"attack vector","right":"вектор атаки"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D04","left":"containment measure","right":"мера сдерживания"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D05","left":"data exfiltration","right":"несанкционированный вывод данных"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D06","left":"service restoration","right":"восстановление сервиса"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D07","left":"post-incident review","right":"разбор после инцидента"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85d79302-440e-5054-8a8d-246607d2d0ce', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D08","is_correct":true,"text":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c0d2bcd-f625-5462-8786-7fbc4349604f', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Восстановление сервиса — лишь первая цель; разбор после инцидента должен выявить сбои контроля и назначить измеримые профилактические действия.","target_language":"en","word_bank":["Service","restoration","is","only","the","first","objective",";","the","post-incident","review","must","identify","control","failures","and","assign","measurable","preventive","action","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a09ef927-a7bc-5ea2-8d33-19e91313e5a8', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"attack vector","instruction":"Выберите подходящее слово.","options":["attack vector","service restoration","production outage"],"sentence_template":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a1b7136-da07-5e8e-821d-3e9e5935a0b9', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Service","restoration","is","only","the","first","objective",";","the","post-incident","review","must","identify","control","failures","and","assign","measurable","preventive","action","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","action","preventive","measurable","assign","and","failures","control","identify","must","review","post-incident","the",";","objective","first","the","only","is","restoration","Service"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3820be15-0762-5bed-b71f-bb7fff13a05d', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9dc4167a-5431-5efe-b99a-40214a871e53', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Восстановление сервиса — лишь первая цель; разбор после инцидента должен выявить сбои контроля и назначить измеримые профилактические действия. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bd3158a-0c28-52bc-a0e0-782a1513b87c', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action.","translation":"Восстановление сервиса — лишь первая цель; разбор после инцидента должен выявить сбои контроля и назначить измеримые профилактические действия.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Leading a Post-Incident Review"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba263b38-b69b-5b84-8fc4-ab04383e2d04', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“attack vector” means the route used to gain unauthorised access.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D11","is_correct":true,"text":"the route used to gain unauthorised access"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D12","is_correct":false,"text":"an action limiting the spread or impact of an incident"},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D13","is_correct":false,"text":"unauthorised transfer of data from a system"}],"word":"attack vector"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('236c144f-d2b6-50cf-bf0c-35e0e916253e', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action.","explanation":"The missing professional term is “attack vector”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"attack vector","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D14","is_correct":true},{"audio_text":"data exfiltration","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D15","is_correct":false},{"audio_text":"post-incident review","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D16","is_correct":false}],"sentence_template":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07fcbf9d-5c18-5453-954b-3b75340a8e39', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"attack vector","explanation":"The complete professional statement uses “attack vector” precisely.","hint_prefix":"atta","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83af5eef-4239-53d5-ba57-7bf430feead4', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"production outage","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D17","text":"production outage"},{"audio_text":"incident severity","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D18","text":"incident severity"},{"audio_text":"attack vector","id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D19","text":"attack vector"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a13301c-4085-5808-9ac8-e9261084084d', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Leading a Post-Incident Review”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D20","is_correct":true,"text":"Service restoration is only the first objective; the post-incident review must identify control failures and assign measurable preventive action."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_TECHNOLOGY_INCIDENT_RESPONSE_AND_CYBERSECURITY_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('66413ac6-d624-56b0-9ab6-2603640ce22f', 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13dc10cf-6dfa-58e4-854f-686f50375997', 'en', 'production outage', 'сбой рабочей системы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28300317-0931-5d3a-ae0a-1967ad884fff', 'en', 'incident severity', 'критичность инцидента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2501f75e-6f01-5e63-9801-e3290d3525ea', 'en', 'attack vector', 'вектор атаки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('378e9416-fcf6-5213-97a5-cfc70c80f876', 'en', 'containment measure', 'мера сдерживания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6829ea91-1424-5a68-a222-fcd00ca1ea01', 'en', 'data exfiltration', 'несанкционированный вывод данных', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01f08a2c-ef98-5620-b3f8-fa0149e4a1be', 'en', 'service restoration', 'восстановление сервиса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d06df808-feec-5fe4-8fbc-181fee2c9eb6', 'en', 'post-incident review', 'разбор после инцидента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13dc10cf-6dfa-58e4-854f-686f50375997', 'en', 'production outage', 'сбой рабочей системы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28300317-0931-5d3a-ae0a-1967ad884fff', 'en', 'incident severity', 'критичность инцидента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2501f75e-6f01-5e63-9801-e3290d3525ea', 'en', 'attack vector', 'вектор атаки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('378e9416-fcf6-5213-97a5-cfc70c80f876', 'en', 'containment measure', 'мера сдерживания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6829ea91-1424-5a68-a222-fcd00ca1ea01', 'en', 'data exfiltration', 'несанкционированный вывод данных', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01f08a2c-ef98-5620-b3f8-fa0149e4a1be', 'en', 'service restoration', 'восстановление сервиса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d06df808-feec-5fe4-8fbc-181fee2c9eb6', 'en', 'post-incident review', 'разбор после инцидента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13dc10cf-6dfa-58e4-854f-686f50375997', 'en', 'production outage', 'сбой рабочей системы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28300317-0931-5d3a-ae0a-1967ad884fff', 'en', 'incident severity', 'критичность инцидента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2501f75e-6f01-5e63-9801-e3290d3525ea', 'en', 'attack vector', 'вектор атаки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('378e9416-fcf6-5213-97a5-cfc70c80f876', 'en', 'containment measure', 'мера сдерживания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6829ea91-1424-5a68-a222-fcd00ca1ea01', 'en', 'data exfiltration', 'несанкционированный вывод данных', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01f08a2c-ef98-5620-b3f8-fa0149e4a1be', 'en', 'service restoration', 'восстановление сервиса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d06df808-feec-5fe4-8fbc-181fee2c9eb6', 'en', 'post-incident review', 'разбор после инцидента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'production outage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'incident severity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'attack vector' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'containment measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'data exfiltration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'service restoration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, '68d3b5a8-c9c9-5044-8962-6121d2e2a4df', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'post-incident review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'production outage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'incident severity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'attack vector' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'containment measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'data exfiltration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'service restoration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c2962226-b0cf-5d79-b701-27eb4f389bdd', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'post-incident review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'production outage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'incident severity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'attack vector' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'containment measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'data exfiltration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'service restoration' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66413ac6-d624-56b0-9ab6-2603640ce22f', id, 'c9c3537c-8d0d-510f-b0d2-49de33ea8e0a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'post-incident review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
