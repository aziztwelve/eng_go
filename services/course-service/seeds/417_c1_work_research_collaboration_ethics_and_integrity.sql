-- Track: C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('16249afe-21a8-599a-81da-8f1077163aa2', 'C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY', 'Исследовательское сотрудничество, этика и добросовестность', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Исследовательское сотрудничество, этика и добросовестность» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Research Collaboration, Ethics and Integrity","ru":"Исследовательское сотрудничество, этика и добросовестность"}'::jsonb, '{"en":"Develop advanced C1 professional communication for research collaboration, ethics and integrity through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Исследовательское сотрудничество, этика и добросовестность» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3473c64e-59b7-56e9-bb23-f98db821c31e', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Allocating Research Responsibilities","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ecf9add-18f1-5862-ba0d-5d3a669daac9', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D01","left":"research protocol","right":"исследовательский протокол"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D02","left":"informed consent","right":"информированное согласие"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D03","left":"data stewardship","right":"ответственное управление данными"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D04","left":"authorship contribution","right":"авторский вклад"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D05","left":"conflict of interest","right":"конфликт интересов"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D06","left":"protocol deviation","right":"отклонение от протокола"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D07","left":"research integrity","right":"исследовательская добросовестность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06563d48-41f6-5f53-8f70-5a5bc84ed439', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D08","is_correct":true,"text":"The research protocol should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cbc9b0b-d4b9-59e0-a3bc-e356b80bd007', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The research protocol should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Исследовательский протокол должен распределять ответственность за набор участников, управление данными, анализ и сообщения о неблагоприятных событиях до начала сбора.","target_language":"en","word_bank":["The","research","protocol","should","allocate","responsibility","for","recruitment",",","data","stewardship",",","analysis",",","and","adverse-event","reporting","before","collection","begins","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb0fe636-99b4-5c18-8fbf-a9f45f205665', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"research protocol","instruction":"Выберите подходящее слово.","options":["research protocol","authorship contribution","protocol deviation"],"sentence_template":"The ___ should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a318d254-f7ca-5687-9164-f01a447cde93', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","research","protocol","should","allocate","responsibility","for","recruitment",",","data","stewardship",",","analysis",",","and","adverse-event","reporting","before","collection","begins","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","begins","collection","before","reporting","adverse-event","and",",","analysis",",","stewardship","data",",","recruitment","for","responsibility","allocate","should","protocol","research","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edc9c7f2-7940-58e3-b828-8c20917dbfe0', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The research protocol should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2250243a-8c6a-5c57-a159-d23ac2f07b06', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The research protocol should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Исследовательский протокол должен распределять ответственность за набор участников, управление данными, анализ и сообщения о неблагоприятных событиях до начала сбора. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96b402e3-f687-5737-ae46-87e6e712592a', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The research protocol should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins.","translation":"Исследовательский протокол должен распределять ответственность за набор участников, управление данными, анализ и сообщения о неблагоприятных событиях до начала сбора.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Allocating Research Responsibilities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a515298-5ccd-543f-ad27-122b76da6577', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“research protocol” means the approved plan governing a study.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D11","is_correct":true,"text":"the approved plan governing a study"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D12","is_correct":false,"text":"voluntary agreement based on adequate understanding"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D13","is_correct":false,"text":"responsible control of research data throughout its lifecycle"}],"word":"research protocol"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63946d43-22f3-528b-907b-c43d29e65ab5', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The research protocol should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins.","explanation":"The missing professional term is “research protocol”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"research protocol","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D14","is_correct":true},{"audio_text":"data stewardship","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D15","is_correct":false},{"audio_text":"conflict of interest","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D16","is_correct":false}],"sentence_template":"The ___ should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('003f12ff-7b7f-58fa-8e3d-84afa6d8701e', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"research protocol","explanation":"The complete professional statement uses “research protocol” precisely.","hint_prefix":"rese","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3114afb6-46a3-5e8a-9c3c-ccdf7ad6ef5e', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"research protocol","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D17","text":"research protocol"},{"audio_text":"informed consent","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D18","text":"informed consent"},{"audio_text":"data stewardship","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D19","text":"data stewardship"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('819f6041-91e8-52af-8721-8b4fc7e431f3', '3473c64e-59b7-56e9-bb23-f98db821c31e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Allocating Research Responsibilities”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D20","is_correct":true,"text":"The research protocol should allocate responsibility for recruitment, data stewardship, analysis, and adverse-event reporting before collection begins."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('16249afe-21a8-599a-81da-8f1077163aa2', '3473c64e-59b7-56e9-bb23-f98db821c31e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('46aef80f-b15e-51cd-8f47-baeff2d4bdc0', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Managing Ethical Approval","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e300529-9781-5bbe-b529-0cb8634ab797', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D01","left":"research protocol","right":"исследовательский протокол"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D02","left":"informed consent","right":"информированное согласие"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D03","left":"data stewardship","right":"ответственное управление данными"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D04","left":"authorship contribution","right":"авторский вклад"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D05","left":"conflict of interest","right":"конфликт интересов"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D06","left":"protocol deviation","right":"отклонение от протокола"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D07","left":"research integrity","right":"исследовательская добросовестность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9694939f-334b-5394-8c6d-41bb654c0969', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D08","is_correct":true,"text":"Informed consent is an ongoing process, particularly when new findings alter the risks or practical demands of participation."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3aa3395f-5cd4-5f75-b7a2-65f5cadedd3f', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Informed consent is an ongoing process, particularly when new findings alter the risks or practical demands of participation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Информированное согласие является непрерывным процессом, особенно когда новые результаты меняют риски или практические требования участия.","target_language":"en","word_bank":["Informed","consent","is","an","ongoing","process",",","particularly","when","new","findings","alter","the","risks","or","practical","demands","of","participation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae538941-a6fb-5cf3-8865-95fe7e57c2d8', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"informed consent","instruction":"Выберите подходящее слово.","options":["informed consent","conflict of interest","research integrity"],"sentence_template":"___ is an ongoing process, particularly when new findings alter the risks or practical demands of participation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a48091eb-59e7-56d8-a5d8-36f59bae6fc6', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Informed","consent","is","an","ongoing","process",",","particularly","when","new","findings","alter","the","risks","or","practical","demands","of","participation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","participation","of","demands","practical","or","risks","the","alter","findings","new","when","particularly",",","process","ongoing","an","is","consent","Informed"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('087c9ce6-99b1-5dae-bfae-b6861fe31d3d', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Informed consent is an ongoing process, particularly when new findings alter the risks or practical demands of participation. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0cfbf5a-ba14-5bb2-a6b2-841c79913c7c', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Informed consent is an ongoing process, particularly when new findings alter the risks or practical demands of participation. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Информированное согласие является непрерывным процессом, особенно когда новые результаты меняют риски или практические требования участия. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34bceac7-2d10-54cf-bf1c-72e0f9dc41f8', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Informed consent is an ongoing process, particularly when new findings alter the risks or practical demands of participation.","translation":"Информированное согласие является непрерывным процессом, особенно когда новые результаты меняют риски или практические требования участия.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Managing Ethical Approval"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3136bfd-f76a-58c7-afa2-e77fbc151faa', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“informed consent” means voluntary agreement based on adequate understanding.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D11","is_correct":true,"text":"voluntary agreement based on adequate understanding"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D12","is_correct":false,"text":"responsible control of research data throughout its lifecycle"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D13","is_correct":false,"text":"work sufficient to justify scholarly authorship"}],"word":"informed consent"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2f80898-aea1-5bf0-b54c-7e624505c3f8', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Informed consent is an ongoing process, particularly when new findings alter the risks or practical demands of participation.","explanation":"The missing professional term is “informed consent”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"informed consent","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D14","is_correct":true},{"audio_text":"authorship contribution","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D15","is_correct":false},{"audio_text":"protocol deviation","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D16","is_correct":false}],"sentence_template":"___ is an ongoing process, particularly when new findings alter the risks or practical demands of participation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59cf1a9a-b3d6-5922-a566-fd1a9ac7d381', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"informed consent","explanation":"The complete professional statement uses “informed consent” precisely.","hint_prefix":"info","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is an ongoing process, particularly when new findings alter the risks or practical demands of participation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('970ba9ef-ce60-5be2-b82e-b74dc158052e', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"research protocol","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D17","text":"research protocol"},{"audio_text":"informed consent","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D18","text":"informed consent"},{"audio_text":"data stewardship","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D19","text":"data stewardship"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('951c0a4a-3626-595d-bf83-8cd7ea6e3bac', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Managing Ethical Approval”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D20","is_correct":true,"text":"Informed consent is an ongoing process, particularly when new findings alter the risks or practical demands of participation."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('16249afe-21a8-599a-81da-8f1077163aa2', '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6b5f1774-a9fd-5b07-b5fb-5303fbad4211', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Responding to Integrity Concerns","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d56a605-64b6-5645-be9a-6fdf92a37380', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D01","left":"research protocol","right":"исследовательский протокол"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D02","left":"informed consent","right":"информированное согласие"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D03","left":"data stewardship","right":"ответственное управление данными"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D04","left":"authorship contribution","right":"авторский вклад"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D05","left":"conflict of interest","right":"конфликт интересов"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D06","left":"protocol deviation","right":"отклонение от протокола"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D07","left":"research integrity","right":"исследовательская добросовестность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66e40d43-3d06-5e3c-b0ad-e46d5cc38283', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D08","is_correct":true,"text":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d74605ac-605d-5017-a41d-88579ec0931e', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Исследовательская добросовестность требует документировать, оценивать и сообщать по соответствующему каналу о каждом отклонении от протокола и конфликте интересов.","target_language":"en","word_bank":["Research","integrity","requires","every","protocol","deviation","and","conflict","of","interest","to","be","documented",",","assessed",",","and","reported","through","the","appropriate","channel","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90919e6d-26ef-5ede-9f26-50aecd2631b9', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"data stewardship","instruction":"Выберите подходящее слово.","options":["data stewardship","protocol deviation","research protocol"],"sentence_template":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90d067a4-f6c1-5614-826d-48bcf2440d94', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Research","integrity","requires","every","protocol","deviation","and","conflict","of","interest","to","be","documented",",","assessed",",","and","reported","through","the","appropriate","channel","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","channel","appropriate","the","through","reported","and",",","assessed",",","documented","be","to","interest","of","conflict","and","deviation","protocol","every","requires","integrity","Research"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb1635e0-277f-5ad1-97f9-82632320817f', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ab59f0a-f6b9-5f59-b8c0-3a1b8ea9578d', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Исследовательская добросовестность требует документировать, оценивать и сообщать по соответствующему каналу о каждом отклонении от протокола и конфликте интересов. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('971a0dc2-bc4d-51b7-94c1-3fa8a602a5a0', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel.","translation":"Исследовательская добросовестность требует документировать, оценивать и сообщать по соответствующему каналу о каждом отклонении от протокола и конфликте интересов.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Responding to Integrity Concerns"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a4ef848-ea87-5bd4-bf90-fb06f88aa38f', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“data stewardship” means responsible control of research data throughout its lifecycle.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D11","is_correct":true,"text":"responsible control of research data throughout its lifecycle"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D12","is_correct":false,"text":"work sufficient to justify scholarly authorship"},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D13","is_correct":false,"text":"an interest capable of influencing professional judgement"}],"word":"data stewardship"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('082b2252-64b3-5f5e-b4e3-6f3b1c27ebbc', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel.","explanation":"The missing professional term is “data stewardship”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"data stewardship","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D14","is_correct":true},{"audio_text":"conflict of interest","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D15","is_correct":false},{"audio_text":"research integrity","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D16","is_correct":false}],"sentence_template":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4bf4c03-687e-5516-af81-8cdb1a19963c', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"data stewardship","explanation":"The complete professional statement uses “data stewardship” precisely.","hint_prefix":"data","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e05f0c3-1c75-57c8-b961-f9d2aeefc14c', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"research protocol","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D17","text":"research protocol"},{"audio_text":"informed consent","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D18","text":"informed consent"},{"audio_text":"data stewardship","id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D19","text":"data stewardship"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dd0b882-d5fc-572a-988c-e16795a0b948', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Responding to Integrity Concerns”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D20","is_correct":true,"text":"Research integrity requires every protocol deviation and conflict of interest to be documented, assessed, and reported through the appropriate channel."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_RESEARCH_COLLABORATION_ETHICS_AND_INTEGRITY_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('16249afe-21a8-599a-81da-8f1077163aa2', '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880d9504-2a26-568e-a47c-d10f7fa2ecea', 'en', 'research protocol', 'исследовательский протокол', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8391606-f85c-511a-961f-d59d5833530e', 'en', 'informed consent', 'информированное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9519533a-fb15-518f-9d04-c2f8a4b06201', 'en', 'data stewardship', 'ответственное управление данными', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f65a57e8-6e5b-50b5-8672-0c009fda21ff', 'en', 'authorship contribution', 'авторский вклад', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d94a3967-8bc3-53ac-afe5-a5160bd7fdf7', 'en', 'protocol deviation', 'отклонение от протокола', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c2cfaba-a2a3-528a-91b2-9d0c7d3383fc', 'en', 'research integrity', 'исследовательская добросовестность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880d9504-2a26-568e-a47c-d10f7fa2ecea', 'en', 'research protocol', 'исследовательский протокол', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8391606-f85c-511a-961f-d59d5833530e', 'en', 'informed consent', 'информированное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9519533a-fb15-518f-9d04-c2f8a4b06201', 'en', 'data stewardship', 'ответственное управление данными', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f65a57e8-6e5b-50b5-8672-0c009fda21ff', 'en', 'authorship contribution', 'авторский вклад', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d94a3967-8bc3-53ac-afe5-a5160bd7fdf7', 'en', 'protocol deviation', 'отклонение от протокола', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c2cfaba-a2a3-528a-91b2-9d0c7d3383fc', 'en', 'research integrity', 'исследовательская добросовестность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880d9504-2a26-568e-a47c-d10f7fa2ecea', 'en', 'research protocol', 'исследовательский протокол', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8391606-f85c-511a-961f-d59d5833530e', 'en', 'informed consent', 'информированное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9519533a-fb15-518f-9d04-c2f8a4b06201', 'en', 'data stewardship', 'ответственное управление данными', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f65a57e8-6e5b-50b5-8672-0c009fda21ff', 'en', 'authorship contribution', 'авторский вклад', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d94a3967-8bc3-53ac-afe5-a5160bd7fdf7', 'en', 'protocol deviation', 'отклонение от протокола', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c2cfaba-a2a3-528a-91b2-9d0c7d3383fc', 'en', 'research integrity', 'исследовательская добросовестность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '3473c64e-59b7-56e9-bb23-f98db821c31e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'research protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '3473c64e-59b7-56e9-bb23-f98db821c31e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '3473c64e-59b7-56e9-bb23-f98db821c31e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'data stewardship' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '3473c64e-59b7-56e9-bb23-f98db821c31e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorship contribution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '3473c64e-59b7-56e9-bb23-f98db821c31e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '3473c64e-59b7-56e9-bb23-f98db821c31e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'protocol deviation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '3473c64e-59b7-56e9-bb23-f98db821c31e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'research integrity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'research protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'data stewardship' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorship contribution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'protocol deviation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '46aef80f-b15e-51cd-8f47-baeff2d4bdc0', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'research integrity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'research protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'data stewardship' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorship contribution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'protocol deviation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '16249afe-21a8-599a-81da-8f1077163aa2', id, '6b5f1774-a9fd-5b07-b5fb-5303fbad4211', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'research integrity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
