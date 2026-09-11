-- Track: B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', 'B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE', 'Риски, соблюдение требований и обеспечение качества', 'Развивайте профессиональное общение уровня B2 по теме «Риски, соблюдение требований и обеспечение качества», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Risk, Compliance and Quality Assurance","ru":"Риски, соблюдение требований и обеспечение качества"}'::jsonb, '{"en":"Develop B2 professional communication for risk, compliance and quality assurance by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Риски, соблюдение требований и обеспечение качества», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bf8f182f-c306-57cf-a370-6fe76918c542', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Assessing Operational Risk","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64ef9a8c-68a6-5513-b076-a89fc71805c6', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D01","left":"risk assessment","right":"оценка риска"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D02","left":"control measure","right":"мера контроля"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D03","left":"regulatory requirement","right":"нормативное требование"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D04","left":"compliance breach","right":"нарушение требований"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D05","left":"root cause","right":"коренная причина"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D06","left":"corrective action","right":"корректирующее действие"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D07","left":"quality assurance","right":"обеспечение качества"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bb615c4-252c-5bc9-95d8-814698e56245', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D08","is_correct":true,"text":"A risk assessment should evaluate likelihood and impact before selecting a proportionate control measure."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('040affa0-5046-5e8a-8f17-e8b5b96fc53b', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A risk assessment should evaluate likelihood and impact before selecting a proportionate control measure.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оценка риска должна учитывать вероятность и последствия до выбора соразмерной меры контроля.","target_language":"en","word_bank":["A","risk","assessment","should","evaluate","likelihood","and","impact","before","selecting","a","proportionate","control","measure","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20acbb4a-09fd-5dd5-a7e4-810ccc499ce5', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"risk assessment","instruction":"Выберите подходящее слово.","options":["risk assessment","compliance breach","corrective action"],"sentence_template":"A ___ should evaluate likelihood and impact before selecting a proportionate control measure."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b29cd56d-ad9e-5dcd-b086-3b061cd6080d', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","risk","assessment","should","evaluate","likelihood","and","impact","before","selecting","a","proportionate","control","measure","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","measure","control","proportionate","a","selecting","before","impact","and","likelihood","evaluate","should","assessment","risk","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec903a34-9922-5d1e-a257-ee8c81383719', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A risk assessment should evaluate likelihood and impact before selecting a proportionate control measure. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7d458e1-6bee-5c1e-9dca-84dce2e9d06e', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A risk assessment should evaluate likelihood and impact before selecting a proportionate control measure. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Оценка риска должна учитывать вероятность и последствия до выбора соразмерной меры контроля. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('daeb87c2-e798-510f-b6d9-30373ec3e6c2', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"A risk assessment should evaluate likelihood and impact before selecting a proportionate control measure.","translation":"Оценка риска должна учитывать вероятность и последствия до выбора соразмерной меры контроля.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Assessing Operational Risk"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ee94420-cdc9-5d8d-8563-0f351264d621', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“risk assessment” means a systematic evaluation of hazards and consequences.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D11","is_correct":true,"text":"a systematic evaluation of hazards and consequences"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D12","is_correct":false,"text":"an action reducing the likelihood or impact of a risk"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D13","is_correct":false,"text":"a rule imposed by an authorised body"}],"word":"risk assessment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28c21286-e290-5c88-852a-6fa8f5cba381', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A risk assessment should evaluate likelihood and impact before selecting a proportionate control measure.","explanation":"The missing professional expression is “risk assessment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"risk assessment","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D14","is_correct":true},{"audio_text":"regulatory requirement","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D15","is_correct":false},{"audio_text":"root cause","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D16","is_correct":false}],"sentence_template":"A ___ should evaluate likelihood and impact before selecting a proportionate control measure."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6695fc15-012f-51f7-83d9-46d5ba208484', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"risk assessment","explanation":"The complete workplace statement uses “risk assessment” precisely.","hint_prefix":"risk","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should evaluate likelihood and impact before selecting a proportionate control measure."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91391c86-6148-599e-845e-8309f4b19846', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"risk assessment","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D17","text":"risk assessment"},{"audio_text":"control measure","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D18","text":"control measure"},{"audio_text":"regulatory requirement","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D19","text":"regulatory requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c405a16e-b4c8-57fe-8740-6c45a05ab666', 'bf8f182f-c306-57cf-a370-6fe76918c542', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Assessing Operational Risk”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D20","is_correct":true,"text":"A risk assessment should evaluate likelihood and impact before selecting a proportionate control measure."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', 'bf8f182f-c306-57cf-a370-6fe76918c542', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('72a60f28-bc49-56af-8cb2-80209d88c294', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Maintaining Compliance","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d9b0aad-d5bd-5496-abaf-4a166a5ab52d', '72a60f28-bc49-56af-8cb2-80209d88c294', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D01","left":"risk assessment","right":"оценка риска"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D02","left":"control measure","right":"мера контроля"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D03","left":"regulatory requirement","right":"нормативное требование"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D04","left":"compliance breach","right":"нарушение требований"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D05","left":"root cause","right":"коренная причина"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D06","left":"corrective action","right":"корректирующее действие"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D07","left":"quality assurance","right":"обеспечение качества"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c59206a9-642d-5acd-83ed-4a6ccf3868d6', '72a60f28-bc49-56af-8cb2-80209d88c294', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D08","is_correct":true,"text":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e5ca5a9-5092-5da7-8cb4-24bfabde4b29', '72a60f28-bc49-56af-8cb2-80209d88c294', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Любое нарушение требований необходимо своевременно документировать, даже если непосредственного вреда не возникло, поскольку соответствующее нормативное требование продолжает действовать.","target_language":"en","word_bank":["Any","compliance","breach","must","be","documented","promptly",",","even","when","no","immediate","harm","occurred",",","because","the","underlying","regulatory","requirement","still","applies","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('330f553a-d3df-56ad-b57d-b4944514f2fd', '72a60f28-bc49-56af-8cb2-80209d88c294', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"control measure","instruction":"Выберите подходящее слово.","options":["control measure","root cause","quality assurance"],"sentence_template":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38abf4b9-f494-5948-aab3-09c841da0fa5', '72a60f28-bc49-56af-8cb2-80209d88c294', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Any","compliance","breach","must","be","documented","promptly",",","even","when","no","immediate","harm","occurred",",","because","the","underlying","regulatory","requirement","still","applies","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","applies","still","requirement","regulatory","underlying","the","because",",","occurred","harm","immediate","no","when","even",",","promptly","documented","be","must","breach","compliance","Any"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ce39725-d606-58a6-8ed6-154b18a1e9ab', '72a60f28-bc49-56af-8cb2-80209d88c294', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0310a897-d236-5467-95b9-d4869d52d0d2', '72a60f28-bc49-56af-8cb2-80209d88c294', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Любое нарушение требований необходимо своевременно документировать, даже если непосредственного вреда не возникло, поскольку соответствующее нормативное требование продолжает действовать. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('baa00bc6-5efc-5d5e-a353-5692f908fc4e', '72a60f28-bc49-56af-8cb2-80209d88c294', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies.","translation":"Любое нарушение требований необходимо своевременно документировать, даже если непосредственного вреда не возникло, поскольку соответствующее нормативное требование продолжает действовать.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Maintaining Compliance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76d26f58-5b2d-57b4-80e8-eb6c06825c65', '72a60f28-bc49-56af-8cb2-80209d88c294', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“control measure” means an action reducing the likelihood or impact of a risk.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D11","is_correct":true,"text":"an action reducing the likelihood or impact of a risk"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D12","is_correct":false,"text":"a rule imposed by an authorised body"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D13","is_correct":false,"text":"a failure to follow an applicable rule"}],"word":"control measure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4b1f457-bb32-542f-a475-5b22eb5df4f4', '72a60f28-bc49-56af-8cb2-80209d88c294', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies.","explanation":"The missing professional expression is “control measure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"control measure","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D14","is_correct":true},{"audio_text":"compliance breach","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D15","is_correct":false},{"audio_text":"corrective action","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D16","is_correct":false}],"sentence_template":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0295ae7a-7445-503c-b571-eafb270c6c08', '72a60f28-bc49-56af-8cb2-80209d88c294', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"control measure","explanation":"The complete workplace statement uses “control measure” precisely.","hint_prefix":"cont","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a29c0d4-56da-5366-9b81-ded311fec172', '72a60f28-bc49-56af-8cb2-80209d88c294', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"risk assessment","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D17","text":"risk assessment"},{"audio_text":"control measure","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D18","text":"control measure"},{"audio_text":"regulatory requirement","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D19","text":"regulatory requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bffd3aea-3c59-5c08-bffa-4605b133b3c9', '72a60f28-bc49-56af-8cb2-80209d88c294', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Maintaining Compliance”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D20","is_correct":true,"text":"Any compliance breach must be documented promptly, even when no immediate harm occurred, because the underlying regulatory requirement still applies."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', '72a60f28-bc49-56af-8cb2-80209d88c294', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Investigating Quality Failures","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6e39cdf-287a-57e5-bf08-a04b67db7c7b', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D01","left":"risk assessment","right":"оценка риска"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D02","left":"control measure","right":"мера контроля"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D03","left":"regulatory requirement","right":"нормативное требование"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D04","left":"compliance breach","right":"нарушение требований"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D05","left":"root cause","right":"коренная причина"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D06","left":"corrective action","right":"корректирующее действие"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D07","left":"quality assurance","right":"обеспечение качества"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2185e90-dfbc-5ba2-9ff2-b1238b94b026', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D08","is_correct":true,"text":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('376c7f20-20e2-55d4-b67c-dd7c3acbf533', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обеспечение качества требует расследования коренной причины и проверки того, что корректирующее действие предотвращает повторение той же ошибки.","target_language":"en","word_bank":["Quality","assurance","requires","investigation","of","the","root","cause","and","verification","that","corrective","action","prevents","the","same","failure","from","recurring","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fd50493-058f-5abd-b6b4-2f59aa979ced', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"regulatory requirement","instruction":"Выберите подходящее слово.","options":["regulatory requirement","corrective action","risk assessment"],"sentence_template":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d42cfe09-b940-5c46-9c31-5274373fe3f6', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Quality","assurance","requires","investigation","of","the","root","cause","and","verification","that","corrective","action","prevents","the","same","failure","from","recurring","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","recurring","from","failure","same","the","prevents","action","corrective","that","verification","and","cause","root","the","of","investigation","requires","assurance","Quality"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5632a844-b9ae-52b0-b980-c71795afb016', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43214c45-5070-53bd-b25d-2e6680ea1bac', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Обеспечение качества требует расследования коренной причины и проверки того, что корректирующее действие предотвращает повторение той же ошибки. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85a00a42-f9f0-56eb-9cad-a7abd37c07e7', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring.","translation":"Обеспечение качества требует расследования коренной причины и проверки того, что корректирующее действие предотвращает повторение той же ошибки.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Investigating Quality Failures"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a933b41-efb4-5779-9f16-3b8c2c14a3b6', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“regulatory requirement” means a rule imposed by an authorised body.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D11","is_correct":true,"text":"a rule imposed by an authorised body"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D12","is_correct":false,"text":"a failure to follow an applicable rule"},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D13","is_correct":false,"text":"the fundamental reason a problem occurred"}],"word":"regulatory requirement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('365aec03-64c3-5b51-b5e1-29e568fcdb77', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring.","explanation":"The missing professional expression is “regulatory requirement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"regulatory requirement","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D14","is_correct":true},{"audio_text":"root cause","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D15","is_correct":false},{"audio_text":"quality assurance","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D16","is_correct":false}],"sentence_template":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98a73f72-a685-5c8c-a542-eae4492aaa94', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"regulatory requirement","explanation":"The complete workplace statement uses “regulatory requirement” precisely.","hint_prefix":"regu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65cbd488-3931-5027-a371-8d961e84109c', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"risk assessment","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D17","text":"risk assessment"},{"audio_text":"control measure","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D18","text":"control measure"},{"audio_text":"regulatory requirement","id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D19","text":"regulatory requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d82571c-3b12-56be-8d65-c7cc7392228f', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Investigating Quality Failures”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D20","is_correct":true,"text":"Quality assurance requires investigation of the root cause and verification that corrective action prevents the same failure from recurring."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_RISK_COMPLIANCE_AND_QUALITY_ASSURANCE_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81bd17b5-745d-58cc-b0c4-ab4805179386', 'en', 'risk assessment', 'оценка риска', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ed10657-fb73-57ec-9605-67f8c45b620d', 'en', 'control measure', 'мера контроля', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba4fe512-efd7-582a-85b4-d96f4af9baf1', 'en', 'regulatory requirement', 'нормативное требование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a229ddb-904d-5a41-800c-0ee0c4b2af32', 'en', 'compliance breach', 'нарушение требований', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'коренная причина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a3a938a-fbef-5f0b-b216-e04dc3f4184b', 'en', 'corrective action', 'корректирующее действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55452e7d-f083-5e42-94b6-da291969d693', 'en', 'quality assurance', 'обеспечение качества', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81bd17b5-745d-58cc-b0c4-ab4805179386', 'en', 'risk assessment', 'оценка риска', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ed10657-fb73-57ec-9605-67f8c45b620d', 'en', 'control measure', 'мера контроля', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba4fe512-efd7-582a-85b4-d96f4af9baf1', 'en', 'regulatory requirement', 'нормативное требование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a229ddb-904d-5a41-800c-0ee0c4b2af32', 'en', 'compliance breach', 'нарушение требований', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'коренная причина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a3a938a-fbef-5f0b-b216-e04dc3f4184b', 'en', 'corrective action', 'корректирующее действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55452e7d-f083-5e42-94b6-da291969d693', 'en', 'quality assurance', 'обеспечение качества', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81bd17b5-745d-58cc-b0c4-ab4805179386', 'en', 'risk assessment', 'оценка риска', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ed10657-fb73-57ec-9605-67f8c45b620d', 'en', 'control measure', 'мера контроля', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba4fe512-efd7-582a-85b4-d96f4af9baf1', 'en', 'regulatory requirement', 'нормативное требование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a229ddb-904d-5a41-800c-0ee0c4b2af32', 'en', 'compliance breach', 'нарушение требований', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'коренная причина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a3a938a-fbef-5f0b-b216-e04dc3f4184b', 'en', 'corrective action', 'корректирующее действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55452e7d-f083-5e42-94b6-da291969d693', 'en', 'quality assurance', 'обеспечение качества', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'bf8f182f-c306-57cf-a370-6fe76918c542', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'bf8f182f-c306-57cf-a370-6fe76918c542', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'control measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'bf8f182f-c306-57cf-a370-6fe76918c542', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'bf8f182f-c306-57cf-a370-6fe76918c542', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'compliance breach' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'bf8f182f-c306-57cf-a370-6fe76918c542', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'bf8f182f-c306-57cf-a370-6fe76918c542', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'bf8f182f-c306-57cf-a370-6fe76918c542', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality assurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, '72a60f28-bc49-56af-8cb2-80209d88c294', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, '72a60f28-bc49-56af-8cb2-80209d88c294', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'control measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, '72a60f28-bc49-56af-8cb2-80209d88c294', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, '72a60f28-bc49-56af-8cb2-80209d88c294', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'compliance breach' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, '72a60f28-bc49-56af-8cb2-80209d88c294', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, '72a60f28-bc49-56af-8cb2-80209d88c294', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, '72a60f28-bc49-56af-8cb2-80209d88c294', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality assurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'control measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'compliance breach' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d87760c-87eb-5554-b5aa-5b7fefcf8ea8', id, 'b3c299cb-aa57-5b16-bd9e-e1b70c08ef7e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality assurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
