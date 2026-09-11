-- Track: C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f264ffc9-689b-58ea-afa9-6c9025878793', 'C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY', 'Экстренные службы, координация кризисов и общественный долг', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Экстренные службы, координация кризисов и общественный долг» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Emergency Services, Crisis Coordination and Public Duty","ru":"Экстренные службы, координация кризисов и общественный долг"}'::jsonb, '{"en":"Develop advanced C1 professional communication for emergency services, crisis coordination and public duty through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Экстренные службы, координация кризисов и общественный долг» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7f474a46-962b-54f0-9293-96a682d39b1b', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Establishing Operational Command","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c187de1-d4c8-5761-9676-708f7c7258eb', '7f474a46-962b-54f0-9293-96a682d39b1b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D01","left":"incident command","right":"оперативное командование"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D02","left":"multi-agency response","right":"межведомственное реагирование"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D03","left":"situational awareness","right":"понимание оперативной обстановки"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D04","left":"operational priority","right":"оперативный приоритет"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D05","left":"resource deployment","right":"развёртывание ресурсов"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D06","left":"public safety message","right":"сообщение для безопасности населения"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D07","left":"operational debrief","right":"оперативный разбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('733000ce-74c6-53b5-bdc4-8ec0793889ab', '7f474a46-962b-54f0-9293-96a682d39b1b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D08","is_correct":true,"text":"Incident command must establish shared situational awareness before resource deployment is expanded across multiple agencies."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('952f26e6-ed8e-5b68-b6bb-c700b5d959e4', '7f474a46-962b-54f0-9293-96a682d39b1b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Incident command must establish shared situational awareness before resource deployment is expanded across multiple agencies.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оперативное командование должно обеспечить общее понимание обстановки до расширения развёртывания ресурсов между несколькими службами.","target_language":"en","word_bank":["Incident","command","must","establish","shared","situational","awareness","before","resource","deployment","is","expanded","across","multiple","agencies","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a643f8d-e8fa-5e99-ac4d-488c13539605', '7f474a46-962b-54f0-9293-96a682d39b1b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"incident command","instruction":"Выберите подходящее слово.","options":["incident command","operational priority","public safety message"],"sentence_template":"___ must establish shared situational awareness before resource deployment is expanded across multiple agencies."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29da6516-ba80-5f5b-9937-0f7d10b9ab52', '7f474a46-962b-54f0-9293-96a682d39b1b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Incident","command","must","establish","shared","situational","awareness","before","resource","deployment","is","expanded","across","multiple","agencies","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","agencies","multiple","across","expanded","is","deployment","resource","before","awareness","situational","shared","establish","must","command","Incident"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7a88336-be5c-53c3-adc1-f6635c157174', '7f474a46-962b-54f0-9293-96a682d39b1b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Incident command must establish shared situational awareness before resource deployment is expanded across multiple agencies. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c747ef6-5489-5704-8c4c-d4a276d9d65d', '7f474a46-962b-54f0-9293-96a682d39b1b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Incident command must establish shared situational awareness before resource deployment is expanded across multiple agencies. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Оперативное командование должно обеспечить общее понимание обстановки до расширения развёртывания ресурсов между несколькими службами. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bea6cc5f-d106-5197-b87d-fa92ad075d97', '7f474a46-962b-54f0-9293-96a682d39b1b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Incident command must establish shared situational awareness before resource deployment is expanded across multiple agencies.","translation":"Оперативное командование должно обеспечить общее понимание обстановки до расширения развёртывания ресурсов между несколькими службами.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Establishing Operational Command"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbe58543-2027-51e5-91dc-d6f08d40f7f5', '7f474a46-962b-54f0-9293-96a682d39b1b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“incident command” means the structure directing an emergency response.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D11","is_correct":true,"text":"the structure directing an emergency response"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D12","is_correct":false,"text":"coordinated action by several public services"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D13","is_correct":false,"text":"an accurate shared view of current conditions"}],"word":"incident command"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e7d1742-a295-5f19-999a-3894e558e5d9', '7f474a46-962b-54f0-9293-96a682d39b1b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Incident command must establish shared situational awareness before resource deployment is expanded across multiple agencies.","explanation":"The missing professional term is “incident command”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"incident command","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D14","is_correct":true},{"audio_text":"situational awareness","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D15","is_correct":false},{"audio_text":"resource deployment","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D16","is_correct":false}],"sentence_template":"___ must establish shared situational awareness before resource deployment is expanded across multiple agencies."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('222299b1-0c98-5438-93c8-53cc1fe68c47', '7f474a46-962b-54f0-9293-96a682d39b1b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"incident command","explanation":"The complete professional statement uses “incident command” precisely.","hint_prefix":"inci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ must establish shared situational awareness before resource deployment is expanded across multiple agencies."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8e5a63a-5a6e-576f-82e9-2d2536504cd6', '7f474a46-962b-54f0-9293-96a682d39b1b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"incident command","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D17","text":"incident command"},{"audio_text":"multi-agency response","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D18","text":"multi-agency response"},{"audio_text":"situational awareness","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D19","text":"situational awareness"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46a6c72e-45d3-5b37-8244-75e5e440c11e', '7f474a46-962b-54f0-9293-96a682d39b1b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Establishing Operational Command”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D20","is_correct":true,"text":"Incident command must establish shared situational awareness before resource deployment is expanded across multiple agencies."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f264ffc9-689b-58ea-afa9-6c9025878793', '7f474a46-962b-54f0-9293-96a682d39b1b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2a8b4544-8fee-50c2-ab75-b8dac45d8cec', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Coordinating a Multi-Agency Response","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('443c4ba9-910e-5a19-92b7-b0b3caec83be', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D01","left":"incident command","right":"оперативное командование"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D02","left":"multi-agency response","right":"межведомственное реагирование"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D03","left":"situational awareness","right":"понимание оперативной обстановки"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D04","left":"operational priority","right":"оперативный приоритет"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D05","left":"resource deployment","right":"развёртывание ресурсов"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D06","left":"public safety message","right":"сообщение для безопасности населения"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D07","left":"operational debrief","right":"оперативный разбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84f2a303-4419-58e2-a916-52dcf6702bf8', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D08","is_correct":true,"text":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e958cb35-1e3a-58a2-8d11-a14cb1490845', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оперативным приоритетом является немедленная безопасность жизни, а сообщение для населения должно быть точным без раскрытия непроверенных деталей.","target_language":"en","word_bank":["The","operational","priority","is","immediate","life","safety",",","while","the","public","message","should","remain","accurate","without","disclosing","unverified","detail","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95c37dda-40c0-585c-8837-baa76c6ac90a', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"multi-agency response","instruction":"Выберите подходящее слово.","options":["multi-agency response","resource deployment","operational debrief"],"sentence_template":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c21d053-58ad-5446-8022-815c5c8d4c87', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","operational","priority","is","immediate","life","safety",",","while","the","public","message","should","remain","accurate","without","disclosing","unverified","detail","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","detail","unverified","disclosing","without","accurate","remain","should","message","public","the","while",",","safety","life","immediate","is","priority","operational","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6afe7adf-2f64-527d-a0dd-875fae2aa34f', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c727019e-1518-5a6d-a6e7-6cbb3ae13532', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Оперативным приоритетом является немедленная безопасность жизни, а сообщение для населения должно быть точным без раскрытия непроверенных деталей. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16d5da97-31fd-5bc6-bbd1-2e2b7e1cbd1d', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail.","translation":"Оперативным приоритетом является немедленная безопасность жизни, а сообщение для населения должно быть точным без раскрытия непроверенных деталей.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Coordinating a Multi-Agency Response"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('726969df-d3e2-5167-8b30-916ae070b802', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“multi-agency response” means coordinated action by several public services.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D11","is_correct":true,"text":"coordinated action by several public services"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D12","is_correct":false,"text":"an accurate shared view of current conditions"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D13","is_correct":false,"text":"the most urgent response objective"}],"word":"multi-agency response"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53705a3f-d0fc-5488-84c3-ecbfd62051f6', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail.","explanation":"The missing professional term is “multi-agency response”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"multi-agency response","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D14","is_correct":true},{"audio_text":"operational priority","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D15","is_correct":false},{"audio_text":"public safety message","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D16","is_correct":false}],"sentence_template":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81fdc11d-c040-5da5-9508-ab412afa48b7', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"multi-agency response","explanation":"The complete professional statement uses “multi-agency response” precisely.","hint_prefix":"mult","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86d618b2-cec0-586a-b801-fc128367776a', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"incident command","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D17","text":"incident command"},{"audio_text":"multi-agency response","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D18","text":"multi-agency response"},{"audio_text":"situational awareness","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D19","text":"situational awareness"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('226f4612-3fa0-54e4-b470-e92663506150', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Coordinating a Multi-Agency Response”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D20","is_correct":true,"text":"The operational priority is immediate life safety, while the public message should remain accurate without disclosing unverified detail."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f264ffc9-689b-58ea-afa9-6c9025878793', '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ce626e51-1a4a-5aa2-a867-eb6bb73215a2', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Conducting an Operational Debrief","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3d2e4de-1105-5e93-a34d-701297373ae5', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D01","left":"incident command","right":"оперативное командование"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D02","left":"multi-agency response","right":"межведомственное реагирование"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D03","left":"situational awareness","right":"понимание оперативной обстановки"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D04","left":"operational priority","right":"оперативный приоритет"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D05","left":"resource deployment","right":"развёртывание ресурсов"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D06","left":"public safety message","right":"сообщение для безопасности населения"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D07","left":"operational debrief","right":"оперативный разбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('077d754d-fa46-565e-9cbe-178fb1d1d088', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D08","is_correct":true,"text":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90d5bb02-d3c4-5500-9a0b-cdf75fa19e68', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оперативный разбор должен выявить успехи межведомственного реагирования, сбои координации и ответственных за каждое корректирующее действие.","target_language":"en","word_bank":["An","operational","debrief","should","identify","where","the","multi-agency","response","succeeded",",","where","coordination","failed",",","and","who","owns","each","corrective","action","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b57700db-1789-56bd-ace6-a5bdd3e88ca1', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"situational awareness","instruction":"Выберите подходящее слово.","options":["situational awareness","public safety message","incident command"],"sentence_template":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3627d45c-fa6b-5208-b095-12cc56f382b2', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","operational","debrief","should","identify","where","the","multi-agency","response","succeeded",",","where","coordination","failed",",","and","who","owns","each","corrective","action","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","action","corrective","each","owns","who","and",",","failed","coordination","where",",","succeeded","response","multi-agency","the","where","identify","should","debrief","operational","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('861e0133-137c-551c-ad92-1c59923abe1b', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37455ee0-e60e-5b3d-a4a1-ef10bfacbd16', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Оперативный разбор должен выявить успехи межведомственного реагирования, сбои координации и ответственных за каждое корректирующее действие. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41962dfd-9b68-50bd-9aef-c5954ca1f457', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action.","translation":"Оперативный разбор должен выявить успехи межведомственного реагирования, сбои координации и ответственных за каждое корректирующее действие.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Conducting an Operational Debrief"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c2df41d-c932-5255-995b-19f6497178d5', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“situational awareness” means an accurate shared view of current conditions.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D11","is_correct":true,"text":"an accurate shared view of current conditions"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D12","is_correct":false,"text":"the most urgent response objective"},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D13","is_correct":false,"text":"assignment of personnel and equipment"}],"word":"situational awareness"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('713efe4e-eba9-5240-bdb8-25c5aa860846', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action.","explanation":"The missing professional term is “situational awareness”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"situational awareness","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D14","is_correct":true},{"audio_text":"resource deployment","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D15","is_correct":false},{"audio_text":"operational debrief","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D16","is_correct":false}],"sentence_template":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56bf2acd-f8cc-5927-bb08-30755d6db98f', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"situational awareness","explanation":"The complete professional statement uses “situational awareness” precisely.","hint_prefix":"situ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c699dea-7f02-51ad-bfad-d9b4d15903d6', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"incident command","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D17","text":"incident command"},{"audio_text":"multi-agency response","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D18","text":"multi-agency response"},{"audio_text":"situational awareness","id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D19","text":"situational awareness"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb970d15-b9c7-521a-8f26-31b4b82ef8cc', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Conducting an Operational Debrief”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D20","is_correct":true,"text":"An operational debrief should identify where the multi-agency response succeeded, where coordination failed, and who owns each corrective action."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_EMERGENCY_SERVICES_CRISIS_COORDINATION_AND_PUBLIC_DUTY_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f264ffc9-689b-58ea-afa9-6c9025878793', 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d09ee24-cab8-5ddc-8753-5d5d0ec6c2d5', 'en', 'incident command', 'оперативное командование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cdff09d-619a-5e46-95ba-7ff99629f5a4', 'en', 'multi-agency response', 'межведомственное реагирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c11a9ce5-d879-52ea-bc65-519694767ba9', 'en', 'situational awareness', 'понимание оперативной обстановки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('660c2704-2ea5-5595-a9fc-9d3175b0ff6c', 'en', 'operational priority', 'оперативный приоритет', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c20fa10-2090-5d93-8953-24d01be0c0d8', 'en', 'resource deployment', 'развёртывание ресурсов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('238f8894-d9bf-5121-8811-79b0a2838a84', 'en', 'public safety message', 'сообщение для безопасности населения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('64968241-075b-5016-bafb-986982d289df', 'en', 'operational debrief', 'оперативный разбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d09ee24-cab8-5ddc-8753-5d5d0ec6c2d5', 'en', 'incident command', 'оперативное командование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cdff09d-619a-5e46-95ba-7ff99629f5a4', 'en', 'multi-agency response', 'межведомственное реагирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c11a9ce5-d879-52ea-bc65-519694767ba9', 'en', 'situational awareness', 'понимание оперативной обстановки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('660c2704-2ea5-5595-a9fc-9d3175b0ff6c', 'en', 'operational priority', 'оперативный приоритет', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c20fa10-2090-5d93-8953-24d01be0c0d8', 'en', 'resource deployment', 'развёртывание ресурсов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('238f8894-d9bf-5121-8811-79b0a2838a84', 'en', 'public safety message', 'сообщение для безопасности населения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('64968241-075b-5016-bafb-986982d289df', 'en', 'operational debrief', 'оперативный разбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d09ee24-cab8-5ddc-8753-5d5d0ec6c2d5', 'en', 'incident command', 'оперативное командование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cdff09d-619a-5e46-95ba-7ff99629f5a4', 'en', 'multi-agency response', 'межведомственное реагирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c11a9ce5-d879-52ea-bc65-519694767ba9', 'en', 'situational awareness', 'понимание оперативной обстановки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('660c2704-2ea5-5595-a9fc-9d3175b0ff6c', 'en', 'operational priority', 'оперативный приоритет', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c20fa10-2090-5d93-8953-24d01be0c0d8', 'en', 'resource deployment', 'развёртывание ресурсов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('238f8894-d9bf-5121-8811-79b0a2838a84', 'en', 'public safety message', 'сообщение для безопасности населения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('64968241-075b-5016-bafb-986982d289df', 'en', 'operational debrief', 'оперативный разбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '7f474a46-962b-54f0-9293-96a682d39b1b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'incident command' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '7f474a46-962b-54f0-9293-96a682d39b1b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'multi-agency response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '7f474a46-962b-54f0-9293-96a682d39b1b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'situational awareness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '7f474a46-962b-54f0-9293-96a682d39b1b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '7f474a46-962b-54f0-9293-96a682d39b1b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'resource deployment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '7f474a46-962b-54f0-9293-96a682d39b1b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'public safety message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '7f474a46-962b-54f0-9293-96a682d39b1b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational debrief' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'incident command' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'multi-agency response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'situational awareness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'resource deployment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'public safety message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, '2a8b4544-8fee-50c2-ab75-b8dac45d8cec', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational debrief' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'incident command' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'multi-agency response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'situational awareness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'resource deployment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'public safety message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f264ffc9-689b-58ea-afa9-6c9025878793', id, 'ce626e51-1a4a-5aa2-a867-eb6bb73215a2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational debrief' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
