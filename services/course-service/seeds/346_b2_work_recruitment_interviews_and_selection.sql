-- Track: B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('73556cab-490c-57db-a1ab-241ccca68f60', 'B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION', 'Подбор персонала, собеседования и отбор', 'Развивайте профессиональное общение уровня B2 по теме «Подбор персонала, собеседования и отбор», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Recruitment, Interviews and Selection","ru":"Подбор персонала, собеседования и отбор"}'::jsonb, '{"en":"Develop B2 professional communication for recruitment, interviews and selection by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Подбор персонала, собеседования и отбор», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e1c7b79a-9d34-57e8-89bb-5bc8660504c5', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Defining Selection Criteria","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('811891bd-e3ea-520f-86da-6647b5bae0bb', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D01","left":"selection criterion","right":"критерий отбора"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D02","left":"competency-based question","right":"вопрос по компетенциям"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D03","left":"probing question","right":"уточняющий вопрос"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D04","left":"transferable skill","right":"переносимый навык"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D05","left":"unconscious bias","right":"неосознанная предвзятость"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D06","left":"shortlist","right":"короткий список кандидатов"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D07","left":"evidence-based decision","right":"решение на основе доказательств"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d5e67e3-50e2-52d2-bcfa-669f9b63dca0', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D08","is_correct":true,"text":"Each selection criterion should describe evidence genuinely required for success rather than preferences unrelated to job performance."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd432feb-7c29-5e20-b5c4-79bdb5eecda0', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Each selection criterion should describe evidence genuinely required for success rather than preferences unrelated to job performance.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Каждый критерий отбора должен описывать доказательства, действительно необходимые для успеха, а не предпочтения, не связанные с выполнением работы.","target_language":"en","word_bank":["Each","selection","criterion","should","describe","evidence","genuinely","required","for","success","rather","than","preferences","unrelated","to","job","performance","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a03cfc8c-ba17-52db-8f4a-a70e497dbe4f', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"selection criterion","instruction":"Выберите подходящее слово.","options":["selection criterion","transferable skill","shortlist"],"sentence_template":"Each ___ should describe evidence genuinely required for success rather than preferences unrelated to job performance."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9cc93e1-655b-5d5b-939b-fa8ef3f3eed6', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Each","selection","criterion","should","describe","evidence","genuinely","required","for","success","rather","than","preferences","unrelated","to","job","performance","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","performance","job","to","unrelated","preferences","than","rather","success","for","required","genuinely","evidence","describe","should","criterion","selection","Each"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b9598c0-5eff-537b-84a0-b6ca4f550230', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Each selection criterion should describe evidence genuinely required for success rather than preferences unrelated to job performance. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fe1ae2a-1ffc-5fd7-820c-ae81f32c4fd9', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Each selection criterion should describe evidence genuinely required for success rather than preferences unrelated to job performance. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Каждый критерий отбора должен описывать доказательства, действительно необходимые для успеха, а не предпочтения, не связанные с выполнением работы. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fb083d7-dc39-5569-856e-0ce7f8304265', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Each selection criterion should describe evidence genuinely required for success rather than preferences unrelated to job performance.","translation":"Каждый критерий отбора должен описывать доказательства, действительно необходимые для успеха, а не предпочтения, не связанные с выполнением работы.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Defining Selection Criteria"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a87e88ec-3cdc-5507-857e-03f652689c40', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“selection criterion” means a standard used to assess candidates.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D11","is_correct":true,"text":"a standard used to assess candidates"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D12","is_correct":false,"text":"an interview question requesting evidence of past behaviour"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D13","is_correct":false,"text":"a follow-up used to obtain deeper information"}],"word":"selection criterion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53f51320-92a8-53e2-bccc-874c97c21be2', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Each selection criterion should describe evidence genuinely required for success rather than preferences unrelated to job performance.","explanation":"The missing professional expression is “selection criterion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"selection criterion","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D14","is_correct":true},{"audio_text":"probing question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D15","is_correct":false},{"audio_text":"unconscious bias","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D16","is_correct":false}],"sentence_template":"Each ___ should describe evidence genuinely required for success rather than preferences unrelated to job performance."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f0c6681-3574-5ed0-9d93-d73af364d2a7', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"selection criterion","explanation":"The complete workplace statement uses “selection criterion” precisely.","hint_prefix":"sele","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Each ___ should describe evidence genuinely required for success rather than preferences unrelated to job performance."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f91439c-05fb-5b99-843a-7979740f4b70', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"selection criterion","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D17","text":"selection criterion"},{"audio_text":"competency-based question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D18","text":"competency-based question"},{"audio_text":"probing question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D19","text":"probing question"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a56a5e2-c609-5072-95b9-0b83d8569ec3', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Defining Selection Criteria”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D20","is_correct":true,"text":"Each selection criterion should describe evidence genuinely required for success rather than preferences unrelated to job performance."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('73556cab-490c-57db-a1ab-241ccca68f60', 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Conducting Competency Interviews","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('209b5875-ea30-5a9f-885d-4420f2cdbabc', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D01","left":"selection criterion","right":"критерий отбора"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D02","left":"competency-based question","right":"вопрос по компетенциям"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D03","left":"probing question","right":"уточняющий вопрос"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D04","left":"transferable skill","right":"переносимый навык"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D05","left":"unconscious bias","right":"неосознанная предвзятость"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D06","left":"shortlist","right":"короткий список кандидатов"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D07","left":"evidence-based decision","right":"решение на основе доказательств"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41820a93-582d-5ec4-b000-2342165c9c3e', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D08","is_correct":true,"text":"A competency-based question becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf68bd05-6df7-5b85-8c91-7e33f5568ee0', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A competency-based question becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вопрос по компетенциям становится полезнее, когда уточняющий вопрос проясняет личный вклад кандидата и измеримый результат.","target_language":"en","word_bank":["A","competency-based","question","becomes","more","useful","when","a","probing","question","clarifies","the","candidate’s","individual","contribution","and","measurable","result","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e788e447-2c88-510b-96a2-04a01a1dd807', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"competency-based question","instruction":"Выберите подходящее слово.","options":["competency-based question","unconscious bias","evidence-based decision"],"sentence_template":"A ___ becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3fd67b2-bb5b-5099-a694-80fd1464a98f', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","competency-based","question","becomes","more","useful","when","a","probing","question","clarifies","the","candidate’s","individual","contribution","and","measurable","result","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","result","measurable","and","contribution","individual","candidate’s","the","clarifies","question","probing","a","when","useful","more","becomes","question","competency-based","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d59b523e-7834-5068-875f-960072f5a2bf', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A competency-based question becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b1c1ed2-ce19-5904-a624-e10556a8f828', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A competency-based question becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Вопрос по компетенциям становится полезнее, когда уточняющий вопрос проясняет личный вклад кандидата и измеримый результат. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('323905b7-711b-523e-8024-475bad29655a', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"A competency-based question becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result.","translation":"Вопрос по компетенциям становится полезнее, когда уточняющий вопрос проясняет личный вклад кандидата и измеримый результат.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Conducting Competency Interviews"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f819227-feb4-5233-b3fa-9395217d6ec1', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“competency-based question” means an interview question requesting evidence of past behaviour.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D11","is_correct":true,"text":"an interview question requesting evidence of past behaviour"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D12","is_correct":false,"text":"a follow-up used to obtain deeper information"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D13","is_correct":false,"text":"an ability useful across different roles"}],"word":"competency-based question"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b94e0e34-76ec-5e6f-b9c4-285b6e7dc484', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A competency-based question becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result.","explanation":"The missing professional expression is “competency-based question”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"competency-based question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D14","is_correct":true},{"audio_text":"transferable skill","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D15","is_correct":false},{"audio_text":"shortlist","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D16","is_correct":false}],"sentence_template":"A ___ becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b3c5683-1a6b-529a-8927-0359b48979ee', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"competency-based question","explanation":"The complete workplace statement uses “competency-based question” precisely.","hint_prefix":"comp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52035fe4-1d26-5547-b5d0-21ebf3551312', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"selection criterion","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D17","text":"selection criterion"},{"audio_text":"competency-based question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D18","text":"competency-based question"},{"audio_text":"probing question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D19","text":"probing question"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f5868a1-6cb5-557c-9a54-c1f3959e5743', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Conducting Competency Interviews”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D20","is_correct":true,"text":"A competency-based question becomes more useful when a probing question clarifies the candidate’s individual contribution and measurable result."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('73556cab-490c-57db-a1ab-241ccca68f60', '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b8f47079-dc63-5140-86a7-53e7bd5cc70e', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Reaching a Fair Decision","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82f03b2e-db8c-50f8-992d-568ca5b73cc3', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D01","left":"selection criterion","right":"критерий отбора"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D02","left":"competency-based question","right":"вопрос по компетенциям"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D03","left":"probing question","right":"уточняющий вопрос"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D04","left":"transferable skill","right":"переносимый навык"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D05","left":"unconscious bias","right":"неосознанная предвзятость"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D06","left":"shortlist","right":"короткий список кандидатов"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D07","left":"evidence-based decision","right":"решение на основе доказательств"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('877b8218-ef76-57bf-9d49-3633bce34da6', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D08","is_correct":true,"text":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('086430b7-e2b7-5345-b43e-c9e1a15dc53b', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Решение на основе доказательств сравнивает всех кандидатов из короткого списка по одинаковым критериям и уменьшает влияние неосознанной предвзятости.","target_language":"en","word_bank":["An","evidence-based","decision","compares","all","shortlisted","candidates","against","the","same","criteria","and","reduces","the","influence","of","unconscious","bias","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('860ecfc8-79e3-5880-b8e1-7c78d5840e38', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"probing question","instruction":"Выберите подходящее слово.","options":["probing question","shortlist","selection criterion"],"sentence_template":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a4412eb-044e-516c-83e5-96c670e9f3bf', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","evidence-based","decision","compares","all","shortlisted","candidates","against","the","same","criteria","and","reduces","the","influence","of","unconscious","bias","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","bias","unconscious","of","influence","the","reduces","and","criteria","same","the","against","candidates","shortlisted","all","compares","decision","evidence-based","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79884a4a-a80c-5ada-8fc6-094c6a1bd940', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40b5e946-8830-5386-9d5c-476fdcdfc1fd', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Решение на основе доказательств сравнивает всех кандидатов из короткого списка по одинаковым критериям и уменьшает влияние неосознанной предвзятости. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79d05528-35e9-5b04-a19a-6536896218cb', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias.","translation":"Решение на основе доказательств сравнивает всех кандидатов из короткого списка по одинаковым критериям и уменьшает влияние неосознанной предвзятости.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Reaching a Fair Decision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c56d069-9e84-5ddc-b55e-85644f24e893', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“probing question” means a follow-up used to obtain deeper information.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D11","is_correct":true,"text":"a follow-up used to obtain deeper information"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D12","is_correct":false,"text":"an ability useful across different roles"},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D13","is_correct":false,"text":"an automatic preference influencing judgement"}],"word":"probing question"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6099af14-2ab0-5a7e-b1fe-2b3589abe2a4', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias.","explanation":"The missing professional expression is “probing question”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"probing question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D14","is_correct":true},{"audio_text":"unconscious bias","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D15","is_correct":false},{"audio_text":"evidence-based decision","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D16","is_correct":false}],"sentence_template":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be23b247-cb5a-509c-81af-c2e2e07c44c2', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"probing question","explanation":"The complete workplace statement uses “probing question” precisely.","hint_prefix":"prob","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b959e106-940a-558b-b430-078146220034', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"selection criterion","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D17","text":"selection criterion"},{"audio_text":"competency-based question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D18","text":"competency-based question"},{"audio_text":"probing question","id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D19","text":"probing question"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7709bee-8b87-592a-844e-2e4499e24fbf', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Reaching a Fair Decision”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D20","is_correct":true,"text":"An evidence-based decision compares all shortlisted candidates against the same criteria and reduces the influence of unconscious bias."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_RECRUITMENT_INTERVIEWS_AND_SELECTION_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('73556cab-490c-57db-a1ab-241ccca68f60', 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c6cd1b-0036-5f32-a127-0c25e989f989', 'en', 'selection criterion', 'критерий отбора', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('150ca54b-f836-5d19-9732-596c477bee37', 'en', 'competency-based question', 'вопрос по компетенциям', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8111eba7-aecf-569f-b5c4-7cbf4964c857', 'en', 'probing question', 'уточняющий вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b41694fc-12d8-51f4-b761-455498d14de4', 'en', 'transferable skill', 'переносимый навык', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce076599-da87-54e8-acaf-0408f7ba30c7', 'en', 'unconscious bias', 'неосознанная предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('086006f0-dbf6-5f32-9d4b-c32bc789cb3d', 'en', 'shortlist', 'короткий список кандидатов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('018e40b7-1d79-5558-a401-0434a6ef8147', 'en', 'evidence-based decision', 'решение на основе доказательств', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c6cd1b-0036-5f32-a127-0c25e989f989', 'en', 'selection criterion', 'критерий отбора', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('150ca54b-f836-5d19-9732-596c477bee37', 'en', 'competency-based question', 'вопрос по компетенциям', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8111eba7-aecf-569f-b5c4-7cbf4964c857', 'en', 'probing question', 'уточняющий вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b41694fc-12d8-51f4-b761-455498d14de4', 'en', 'transferable skill', 'переносимый навык', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce076599-da87-54e8-acaf-0408f7ba30c7', 'en', 'unconscious bias', 'неосознанная предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('086006f0-dbf6-5f32-9d4b-c32bc789cb3d', 'en', 'shortlist', 'короткий список кандидатов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('018e40b7-1d79-5558-a401-0434a6ef8147', 'en', 'evidence-based decision', 'решение на основе доказательств', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c6cd1b-0036-5f32-a127-0c25e989f989', 'en', 'selection criterion', 'критерий отбора', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('150ca54b-f836-5d19-9732-596c477bee37', 'en', 'competency-based question', 'вопрос по компетенциям', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8111eba7-aecf-569f-b5c4-7cbf4964c857', 'en', 'probing question', 'уточняющий вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b41694fc-12d8-51f4-b761-455498d14de4', 'en', 'transferable skill', 'переносимый навык', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce076599-da87-54e8-acaf-0408f7ba30c7', 'en', 'unconscious bias', 'неосознанная предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('086006f0-dbf6-5f32-9d4b-c32bc789cb3d', 'en', 'shortlist', 'короткий список кандидатов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('018e40b7-1d79-5558-a401-0434a6ef8147', 'en', 'evidence-based decision', 'решение на основе доказательств', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'selection criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'competency-based question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'probing question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable skill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'unconscious bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortlist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'e1c7b79a-9d34-57e8-89bb-5bc8660504c5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence-based decision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'selection criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'competency-based question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'probing question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable skill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'unconscious bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortlist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, '537e97e6-f6b7-5dc7-b42c-bc9aa5dc5b80', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence-based decision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'selection criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'competency-based question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'probing question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable skill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'unconscious bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortlist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '73556cab-490c-57db-a1ab-241ccca68f60', id, 'b8f47079-dc63-5140-86a7-53e7bd5cc70e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence-based decision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
