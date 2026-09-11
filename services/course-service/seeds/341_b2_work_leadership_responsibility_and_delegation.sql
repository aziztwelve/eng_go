-- Track: B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8a6c345a-165a-5f7b-a692-4cdd501a8281', 'B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION', 'Лидерство, ответственность и делегирование', 'Развивайте профессиональное общение уровня B2 по теме «Лидерство, ответственность и делегирование», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Leadership, Responsibility and Delegation","ru":"Лидерство, ответственность и делегирование"}'::jsonb, '{"en":"Develop B2 professional communication for leadership, responsibility and delegation by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Лидерство, ответственность и делегирование», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('14a507e2-9979-5ec8-ab05-0c437298c45c', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Defining Leadership Responsibilities","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91c1cd4b-5da4-576f-ad26-60e39f769509', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D01","left":"strategic oversight","right":"стратегический контроль"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D02","left":"delegate authority","right":"делегировать полномочия"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D03","left":"accountability","right":"ответственность за результат"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D04","left":"decision-making autonomy","right":"самостоятельность в принятии решений"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D05","left":"set expectations","right":"устанавливать ожидания"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D06","left":"micromanage","right":"чрезмерно контролировать"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D07","left":"escalation route","right":"порядок эскалации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5eed93cc-4a37-5b3d-9b0b-b2c5e4bedf69', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D08","is_correct":true,"text":"Strategic oversight requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18ce6185-8d13-5581-b9fe-5de3de58e36c', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Strategic oversight requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Стратегический контроль требует, чтобы руководители чётко устанавливали ожидания, предоставляя специалистам достаточную самостоятельность в выборе способа достижения результатов.","target_language":"en","word_bank":["Strategic","oversight","requires","leaders","to","set","expectations","clearly","while","allowing","specialists","enough","autonomy","to","determine","how","results","are","achieved","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f567097-587f-5b58-bb11-649340f052e8', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"strategic oversight","instruction":"Выберите подходящее слово.","options":["strategic oversight","decision-making autonomy","micromanage"],"sentence_template":"___ requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e498d7fb-5c5f-54c6-bab7-908098c32e96', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Strategic","oversight","requires","leaders","to","set","expectations","clearly","while","allowing","specialists","enough","autonomy","to","determine","how","results","are","achieved","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","achieved","are","results","how","determine","to","autonomy","enough","specialists","allowing","while","clearly","expectations","set","to","leaders","requires","oversight","Strategic"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0845b04a-ccc9-570f-9b59-8b6b1c3b2c4a', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Strategic oversight requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d27ad5c-8c69-5671-8cc1-2f84b0ad256b', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Strategic oversight requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Стратегический контроль требует, чтобы руководители чётко устанавливали ожидания, предоставляя специалистам достаточную самостоятельность в выборе способа достижения результатов. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a1577be-39b5-5155-8304-f754baac60a8', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Strategic oversight requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved.","translation":"Стратегический контроль требует, чтобы руководители чётко устанавливали ожидания, предоставляя специалистам достаточную самостоятельность в выборе способа достижения результатов.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Defining Leadership Responsibilities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2cf2b7e-656e-53d2-a54d-0d72ef9fe7d9', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“strategic oversight” means high-level supervision of direction and priorities.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D11","is_correct":true,"text":"high-level supervision of direction and priorities"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D12","is_correct":false,"text":"give another person the power to make decisions"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D13","is_correct":false,"text":"the obligation to explain and own outcomes"}],"word":"strategic oversight"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e31e978e-db9f-5412-88d6-5b8fc90a1f55', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Strategic oversight requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved.","explanation":"The missing professional expression is “strategic oversight”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"strategic oversight","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D14","is_correct":true},{"audio_text":"accountability","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D15","is_correct":false},{"audio_text":"set expectations","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D16","is_correct":false}],"sentence_template":"___ requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1adc00d5-8bb6-5a4e-a7b5-84a26a38f856', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"strategic oversight","explanation":"The complete workplace statement uses “strategic oversight” precisely.","hint_prefix":"stra","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('243fdcb1-0c54-59ca-b63c-85d0261e06a5', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic oversight","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D17","text":"strategic oversight"},{"audio_text":"delegate authority","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D18","text":"delegate authority"},{"audio_text":"accountability","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D19","text":"accountability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec7a0f20-63f5-5376-85d5-957c6191c547', '14a507e2-9979-5ec8-ab05-0c437298c45c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Defining Leadership Responsibilities”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D20","is_correct":true,"text":"Strategic oversight requires leaders to set expectations clearly while allowing specialists enough autonomy to determine how results are achieved."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8a6c345a-165a-5f7b-a692-4cdd501a8281', '14a507e2-9979-5ec8-ab05-0c437298c45c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8b691799-024f-58b3-bc9f-bcaf866c3ecc', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Delegating Effectively","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5850ba56-f07b-5e19-95de-cae298716067', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D01","left":"strategic oversight","right":"стратегический контроль"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D02","left":"delegate authority","right":"делегировать полномочия"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D03","left":"accountability","right":"ответственность за результат"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D04","left":"decision-making autonomy","right":"самостоятельность в принятии решений"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D05","left":"set expectations","right":"устанавливать ожидания"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D06","left":"micromanage","right":"чрезмерно контролировать"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D07","left":"escalation route","right":"порядок эскалации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a65100be-a876-5bcb-a04a-3493c3501042', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D08","is_correct":true,"text":"To delegate authority effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60eff619-31a7-5944-bedb-625e2d7faff5', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To delegate authority effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы эффективно делегировать полномочия, менеджер должен определить желаемый результат, доступные ресурсы и обстоятельства, требующие эскалации.","target_language":"en","word_bank":["To","delegate","authority","effectively",",","a","manager","must","define","the","desired","outcome",",","available","resources",",","and","circumstances","requiring","escalation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0fa8b02-3c1d-59df-9b68-71349d7c1e9a', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"delegate authority","instruction":"Выберите подходящее слово.","options":["delegate authority","set expectations","escalation route"],"sentence_template":"To ___ effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d456d113-ee1d-50b0-8a78-f9b169d5484c', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","delegate","authority","effectively",",","a","manager","must","define","the","desired","outcome",",","available","resources",",","and","circumstances","requiring","escalation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","escalation","requiring","circumstances","and",",","resources","available",",","outcome","desired","the","define","must","manager","a",",","effectively","authority","delegate","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6fba97d-7350-5490-813a-1c0ac36e51f7', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To delegate authority effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2df73a44-ef2a-5c07-ad31-3567e1a0360b', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To delegate authority effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чтобы эффективно делегировать полномочия, менеджер должен определить желаемый результат, доступные ресурсы и обстоятельства, требующие эскалации. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1406f5ee-8cf6-573c-8893-f1d3489aa97d', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"To delegate authority effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation.","translation":"Чтобы эффективно делегировать полномочия, менеджер должен определить желаемый результат, доступные ресурсы и обстоятельства, требующие эскалации.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Delegating Effectively"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e86cab46-7211-502d-a95d-a5a8723169ce', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“delegate authority” means give another person the power to make decisions.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D11","is_correct":true,"text":"give another person the power to make decisions"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D12","is_correct":false,"text":"the obligation to explain and own outcomes"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D13","is_correct":false,"text":"freedom to make relevant choices independently"}],"word":"delegate authority"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f80382e-8ca8-534f-b213-9023859e6157', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To delegate authority effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation.","explanation":"The missing professional expression is “delegate authority”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"delegate authority","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D14","is_correct":true},{"audio_text":"decision-making autonomy","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D15","is_correct":false},{"audio_text":"micromanage","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D16","is_correct":false}],"sentence_template":"To ___ effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6636424f-5853-572e-a452-c0ec34b22965', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"delegate authority","explanation":"The complete workplace statement uses “delegate authority” precisely.","hint_prefix":"dele","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To ___ effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0b46cff-4ee5-54b5-925b-fc24001ee1f0', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic oversight","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D17","text":"strategic oversight"},{"audio_text":"delegate authority","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D18","text":"delegate authority"},{"audio_text":"accountability","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D19","text":"accountability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62498ca4-ff82-5ae3-996a-65452b96a5b2', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Delegating Effectively”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D20","is_correct":true,"text":"To delegate authority effectively, a manager must define the desired outcome, available resources, and circumstances requiring escalation."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8a6c345a-165a-5f7b-a692-4cdd501a8281', '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f4409567-ed80-5160-b7be-4b6848824f83', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Maintaining Accountability","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8104e19b-8278-5ab0-aeba-8f8b7a6a9c37', 'f4409567-ed80-5160-b7be-4b6848824f83', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D01","left":"strategic oversight","right":"стратегический контроль"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D02","left":"delegate authority","right":"делегировать полномочия"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D03","left":"accountability","right":"ответственность за результат"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D04","left":"decision-making autonomy","right":"самостоятельность в принятии решений"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D05","left":"set expectations","right":"устанавливать ожидания"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D06","left":"micromanage","right":"чрезмерно контролировать"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D07","left":"escalation route","right":"порядок эскалации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6231b3e2-b7cb-5698-8b53-880846a496d6', 'f4409567-ed80-5160-b7be-4b6848824f83', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D08","is_correct":true,"text":"Accountability remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43f1866e-cb1a-5221-9ad5-831d98c13e7d', 'f4409567-ed80-5160-b7be-4b6848824f83', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Accountability remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ответственность за результат остаётся у команды даже при делегировании задач, поэтому прогресс необходимо контролировать, не прибегая к чрезмерному контролю.","target_language":"en","word_bank":["Accountability","remains","with","the","team","even","when","tasks","are","delegated",",","so","progress","must","be","reviewed","without","resorting","to","micromanagement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6dadd3bf-7517-5354-a3a6-455dc7e973e8', 'f4409567-ed80-5160-b7be-4b6848824f83', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"accountability","instruction":"Выберите подходящее слово.","options":["accountability","micromanage","strategic oversight"],"sentence_template":"___ remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72061947-5076-50cb-925f-9141267369c2', 'f4409567-ed80-5160-b7be-4b6848824f83', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Accountability","remains","with","the","team","even","when","tasks","are","delegated",",","so","progress","must","be","reviewed","without","resorting","to","micromanagement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","micromanagement","to","resorting","without","reviewed","be","must","progress","so",",","delegated","are","tasks","when","even","team","the","with","remains","Accountability"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3472480-0007-5258-b4e5-5c9c412a8867', 'f4409567-ed80-5160-b7be-4b6848824f83', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Accountability remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb72225b-49cb-5207-b171-57358e4634a5', 'f4409567-ed80-5160-b7be-4b6848824f83', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Accountability remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Ответственность за результат остаётся у команды даже при делегировании задач, поэтому прогресс необходимо контролировать, не прибегая к чрезмерному контролю. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb1c0111-e1ea-5130-9090-73eabfb2483a', 'f4409567-ed80-5160-b7be-4b6848824f83', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Accountability remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement.","translation":"Ответственность за результат остаётся у команды даже при делегировании задач, поэтому прогресс необходимо контролировать, не прибегая к чрезмерному контролю.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Maintaining Accountability"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fcad539-0de8-571d-9047-9541beb960eb', 'f4409567-ed80-5160-b7be-4b6848824f83', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“accountability” means the obligation to explain and own outcomes.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D11","is_correct":true,"text":"the obligation to explain and own outcomes"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D12","is_correct":false,"text":"freedom to make relevant choices independently"},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D13","is_correct":false,"text":"define required standards and results"}],"word":"accountability"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ac76bbb-a8c3-520e-9751-87d23573ef77', 'f4409567-ed80-5160-b7be-4b6848824f83', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Accountability remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement.","explanation":"The missing professional expression is “accountability”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"accountability","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D14","is_correct":true},{"audio_text":"set expectations","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D15","is_correct":false},{"audio_text":"escalation route","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D16","is_correct":false}],"sentence_template":"___ remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42195f52-f569-50f0-bb03-9c66c2301107', 'f4409567-ed80-5160-b7be-4b6848824f83', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"accountability","explanation":"The complete workplace statement uses “accountability” precisely.","hint_prefix":"acco","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6368008-cfdc-51b8-84eb-04dbadaf27c5', 'f4409567-ed80-5160-b7be-4b6848824f83', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic oversight","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D17","text":"strategic oversight"},{"audio_text":"delegate authority","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D18","text":"delegate authority"},{"audio_text":"accountability","id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D19","text":"accountability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('911abd11-5e5a-5fb1-81cd-d3157e7fcd00', 'f4409567-ed80-5160-b7be-4b6848824f83', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Maintaining Accountability”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D20","is_correct":true,"text":"Accountability remains with the team even when tasks are delegated, so progress must be reviewed without resorting to micromanagement."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_LEADERSHIP_RESPONSIBILITY_AND_DELEGATION_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8a6c345a-165a-5f7b-a692-4cdd501a8281', 'f4409567-ed80-5160-b7be-4b6848824f83', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92689df5-a316-5253-a498-3f3efd2b9afa', 'en', 'strategic oversight', 'стратегический контроль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('da8fc098-0c6a-50cb-ad31-5bb5622a3654', 'en', 'delegate authority', 'делегировать полномочия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ff99f62-4798-52e5-9a51-ae3104dd4322', 'en', 'accountability', 'ответственность за результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0742691-995c-5e72-a0dc-8e586ab27d88', 'en', 'decision-making autonomy', 'самостоятельность в принятии решений', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6dce23ba-23c0-5754-89e8-d2ddf4e901ed', 'en', 'set expectations', 'устанавливать ожидания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('771f6074-b21a-5334-8462-1768907fbbd7', 'en', 'micromanage', 'чрезмерно контролировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd7503d2-ac50-5e51-893e-e57fa4fbdba2', 'en', 'escalation route', 'порядок эскалации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92689df5-a316-5253-a498-3f3efd2b9afa', 'en', 'strategic oversight', 'стратегический контроль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('da8fc098-0c6a-50cb-ad31-5bb5622a3654', 'en', 'delegate authority', 'делегировать полномочия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ff99f62-4798-52e5-9a51-ae3104dd4322', 'en', 'accountability', 'ответственность за результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0742691-995c-5e72-a0dc-8e586ab27d88', 'en', 'decision-making autonomy', 'самостоятельность в принятии решений', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6dce23ba-23c0-5754-89e8-d2ddf4e901ed', 'en', 'set expectations', 'устанавливать ожидания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('771f6074-b21a-5334-8462-1768907fbbd7', 'en', 'micromanage', 'чрезмерно контролировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd7503d2-ac50-5e51-893e-e57fa4fbdba2', 'en', 'escalation route', 'порядок эскалации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92689df5-a316-5253-a498-3f3efd2b9afa', 'en', 'strategic oversight', 'стратегический контроль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('da8fc098-0c6a-50cb-ad31-5bb5622a3654', 'en', 'delegate authority', 'делегировать полномочия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ff99f62-4798-52e5-9a51-ae3104dd4322', 'en', 'accountability', 'ответственность за результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0742691-995c-5e72-a0dc-8e586ab27d88', 'en', 'decision-making autonomy', 'самостоятельность в принятии решений', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6dce23ba-23c0-5754-89e8-d2ddf4e901ed', 'en', 'set expectations', 'устанавливать ожидания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('771f6074-b21a-5334-8462-1768907fbbd7', 'en', 'micromanage', 'чрезмерно контролировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd7503d2-ac50-5e51-893e-e57fa4fbdba2', 'en', 'escalation route', 'порядок эскалации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '14a507e2-9979-5ec8-ab05-0c437298c45c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '14a507e2-9979-5ec8-ab05-0c437298c45c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'delegate authority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '14a507e2-9979-5ec8-ab05-0c437298c45c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '14a507e2-9979-5ec8-ab05-0c437298c45c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision-making autonomy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '14a507e2-9979-5ec8-ab05-0c437298c45c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'set expectations' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '14a507e2-9979-5ec8-ab05-0c437298c45c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'micromanage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '14a507e2-9979-5ec8-ab05-0c437298c45c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'delegate authority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision-making autonomy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'set expectations' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'micromanage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, '8b691799-024f-58b3-bc9f-bcaf866c3ecc', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, 'f4409567-ed80-5160-b7be-4b6848824f83', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, 'f4409567-ed80-5160-b7be-4b6848824f83', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'delegate authority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, 'f4409567-ed80-5160-b7be-4b6848824f83', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, 'f4409567-ed80-5160-b7be-4b6848824f83', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision-making autonomy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, 'f4409567-ed80-5160-b7be-4b6848824f83', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'set expectations' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, 'f4409567-ed80-5160-b7be-4b6848824f83', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'micromanage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a6c345a-165a-5f7b-a692-4cdd501a8281', id, 'f4409567-ed80-5160-b7be-4b6848824f83', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
