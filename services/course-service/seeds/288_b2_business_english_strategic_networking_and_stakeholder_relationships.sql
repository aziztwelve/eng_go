-- Track: B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('92389ffe-ab4b-56e4-8897-8f6767de9d18', 'B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS', 'Стратегический нетворкинг и отношения с заинтересованными сторонами', 'Развивайте точный деловой английский уровня B2 по теме «Стратегический нетворкинг и отношения с заинтересованными сторонами», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Strategic Networking and Stakeholder Relationships","ru":"Стратегический нетворкинг и отношения с заинтересованными сторонами"}'::jsonb, '{"en":"Develop precise B2 business English for strategic networking and stakeholder relationships by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Стратегический нетворкинг и отношения с заинтересованными сторонами», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('59ea606f-2504-513d-95a8-04cef66cb38b', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Establishing Strategic Connections","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfe805f0-e160-52c5-8998-aeee65db4423', '59ea606f-2504-513d-95a8-04cef66cb38b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D01","left":"strategic connection","right":"стратегически важный контакт"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D02","left":"mutual benefit","right":"взаимная выгода"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D03","left":"professional rapport","right":"профессиональный контакт"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D04","left":"stakeholder expectation","right":"ожидание заинтересованной стороны"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D05","left":"credibility","right":"деловая репутация"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D06","left":"follow through","right":"доводить до конца"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D07","left":"conflict of interest","right":"конфликт интересов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f43b33e9-545d-5de3-b374-39d88be62996', '59ea606f-2504-513d-95a8-04cef66cb38b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D08","is_correct":true,"text":"A strategic connection develops through mutual benefit and credibility rather than through a single exchange of contact details."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2285a65-883c-56d5-9dd0-d76328ab6505', '59ea606f-2504-513d-95a8-04cef66cb38b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A strategic connection develops through mutual benefit and credibility rather than through a single exchange of contact details.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Стратегически важный контакт развивается благодаря взаимной выгоде и деловой репутации, а не простому обмену контактными данными.","target_language":"en","word_bank":["A","strategic","connection","develops","through","mutual","benefit","and","credibility","rather","than","through","a","single","exchange","of","contact","details","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dea3dcff-1d53-5c75-8389-b7a5949a93a0', '59ea606f-2504-513d-95a8-04cef66cb38b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"strategic connection","instruction":"Выберите подходящее слово.","options":["strategic connection","stakeholder expectation","follow through"],"sentence_template":"A ___ develops through mutual benefit and credibility rather than through a single exchange of contact details."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('271a8f48-eb0b-529c-b25b-6de68a868d8b', '59ea606f-2504-513d-95a8-04cef66cb38b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","strategic","connection","develops","through","mutual","benefit","and","credibility","rather","than","through","a","single","exchange","of","contact","details","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","details","contact","of","exchange","single","a","through","than","rather","credibility","and","benefit","mutual","through","develops","connection","strategic","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d63cf9fc-321b-54dc-9213-67dd1f357f3a', '59ea606f-2504-513d-95a8-04cef66cb38b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A strategic connection develops through mutual benefit and credibility rather than through a single exchange of contact details. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9eb17568-758d-55d1-96c0-73194c0a2565', '59ea606f-2504-513d-95a8-04cef66cb38b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A strategic connection develops through mutual benefit and credibility rather than through a single exchange of contact details. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Стратегически важный контакт развивается благодаря взаимной выгоде и деловой репутации, а не простому обмену контактными данными. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a4e659b-05b8-542b-ae1c-4d832bf22526', '59ea606f-2504-513d-95a8-04cef66cb38b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A strategic connection develops through mutual benefit and credibility rather than through a single exchange of contact details.","translation":"Стратегически важный контакт развивается благодаря взаимной выгоде и деловой репутации, а не простому обмену контактными данными.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Establishing Strategic Connections"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('350d6c97-3502-5dcd-8960-665f23df6466', '59ea606f-2504-513d-95a8-04cef66cb38b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“strategic connection” means a relationship valuable to long-term objectives.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D11","is_correct":true,"text":"a relationship valuable to long-term objectives"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D12","is_correct":false,"text":"an advantage shared by all parties"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D13","is_correct":false,"text":"a positive and trusting working relationship"}],"word":"strategic connection"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8b79c8c-43a3-5ce9-a247-15d5b1a7978c', '59ea606f-2504-513d-95a8-04cef66cb38b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A strategic connection develops through mutual benefit and credibility rather than through a single exchange of contact details.","explanation":"The missing business expression is “strategic connection”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"strategic connection","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D14","is_correct":true},{"audio_text":"professional rapport","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D15","is_correct":false},{"audio_text":"credibility","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D16","is_correct":false}],"sentence_template":"A ___ develops through mutual benefit and credibility rather than through a single exchange of contact details."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e623f65e-7786-5279-9ed7-37fe02e74cbd', '59ea606f-2504-513d-95a8-04cef66cb38b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"strategic connection","explanation":"The complete business statement uses “strategic connection” precisely.","hint_prefix":"stra","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ develops through mutual benefit and credibility rather than through a single exchange of contact details."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76d7b47c-5b17-574c-a422-1af47186ebd1', '59ea606f-2504-513d-95a8-04cef66cb38b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic connection","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D17","text":"strategic connection"},{"audio_text":"mutual benefit","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D18","text":"mutual benefit"},{"audio_text":"professional rapport","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D19","text":"professional rapport"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4737cf40-a9e7-52bb-9120-5a24093fec51', '59ea606f-2504-513d-95a8-04cef66cb38b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Establishing Strategic Connections”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D20","is_correct":true,"text":"A strategic connection develops through mutual benefit and credibility rather than through a single exchange of contact details."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('92389ffe-ab4b-56e4-8897-8f6767de9d18', '59ea606f-2504-513d-95a8-04cef66cb38b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0b00b022-6cb2-5805-a901-7bd6e4d11f4f', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Maintaining Professional Rapport","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aac9ef0a-d021-5bc8-b348-d4754a9a8e12', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D01","left":"strategic connection","right":"стратегически важный контакт"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D02","left":"mutual benefit","right":"взаимная выгода"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D03","left":"professional rapport","right":"профессиональный контакт"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D04","left":"stakeholder expectation","right":"ожидание заинтересованной стороны"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D05","left":"credibility","right":"деловая репутация"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D06","left":"follow through","right":"доводить до конца"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D07","left":"conflict of interest","right":"конфликт интересов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ed05d7c-4ba1-5657-bf37-502667695635', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D08","is_correct":true,"text":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f12d1120-fc8e-5eb8-b6e3-01ff8846a4df', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Профессиональный контакт поддерживается, когда люди выполняют обязательства и открыто сообщают об изменении обстоятельств.","target_language":"en","word_bank":["Professional","rapport","is","maintained","when","people","follow","through","on","commitments","and","communicate","openly","when","circumstances","change","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c92413b-cc3c-5ab9-a79e-18bf343c215a', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"mutual benefit","instruction":"Выберите подходящее слово.","options":["mutual benefit","credibility","conflict of interest"],"sentence_template":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4946f8d1-dde3-560f-a7f8-66905028b71a', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Professional","rapport","is","maintained","when","people","follow","through","on","commitments","and","communicate","openly","when","circumstances","change","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","change","circumstances","when","openly","communicate","and","commitments","on","through","follow","people","when","maintained","is","rapport","Professional"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b3d3adc-ce20-5e4a-a69b-6f32c400714c', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d3cee13-3976-57a4-8a08-717bb2df59d6', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Профессиональный контакт поддерживается, когда люди выполняют обязательства и открыто сообщают об изменении обстоятельств. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efd4448c-9b75-59d9-895d-ac0cd388eab8', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change.","translation":"Профессиональный контакт поддерживается, когда люди выполняют обязательства и открыто сообщают об изменении обстоятельств.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Maintaining Professional Rapport"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54883a95-902c-5167-8a7d-6c3181920083', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“mutual benefit” means an advantage shared by all parties.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D11","is_correct":true,"text":"an advantage shared by all parties"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D12","is_correct":false,"text":"a positive and trusting working relationship"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D13","is_correct":false,"text":"a result an affected party anticipates"}],"word":"mutual benefit"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abfbac80-7381-5dc9-a53b-fe4c5588f465', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change.","explanation":"The missing business expression is “mutual benefit”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"mutual benefit","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D14","is_correct":true},{"audio_text":"stakeholder expectation","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D15","is_correct":false},{"audio_text":"follow through","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D16","is_correct":false}],"sentence_template":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59378c8c-3009-552b-83e0-609467536bbf', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"mutual benefit","explanation":"The complete business statement uses “mutual benefit” precisely.","hint_prefix":"mutu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de678412-0656-591b-bae0-17b19e224c45', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic connection","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D17","text":"strategic connection"},{"audio_text":"mutual benefit","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D18","text":"mutual benefit"},{"audio_text":"professional rapport","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D19","text":"professional rapport"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71bf5cd8-8c4d-52ac-8e9f-de180acf36a8', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Maintaining Professional Rapport”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D20","is_correct":true,"text":"Professional rapport is maintained when people follow through on commitments and communicate openly when circumstances change."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('92389ffe-ab4b-56e4-8897-8f6767de9d18', '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('17a082e1-a086-56c5-b63e-f92066feec02', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Managing Stakeholder Expectations","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3a04e87-1b31-5691-bc0e-bac36e0c2171', '17a082e1-a086-56c5-b63e-f92066feec02', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D01","left":"strategic connection","right":"стратегически важный контакт"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D02","left":"mutual benefit","right":"взаимная выгода"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D03","left":"professional rapport","right":"профессиональный контакт"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D04","left":"stakeholder expectation","right":"ожидание заинтересованной стороны"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D05","left":"credibility","right":"деловая репутация"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D06","left":"follow through","right":"доводить до конца"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D07","left":"conflict of interest","right":"конфликт интересов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0ca14a3-f3cf-5a10-8b6c-2bfd6795d651', '17a082e1-a086-56c5-b63e-f92066feec02', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D08","is_correct":true,"text":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ec78326-57be-5820-9ab0-4098ebf269f8', '17a082e1-a086-56c5-b63e-f92066feec02', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Управление ожиданием заинтересованной стороны требует ясности относительно результата, срока и возможного конфликта интересов.","target_language":"en","word_bank":["Managing","a","stakeholder","expectation","requires","clarity","about","what","can","be","delivered",",","by","when",",","and","where","a","potential","conflict","of","interest","exists","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6f6b824-b4ab-5d48-92f3-458da0182847', '17a082e1-a086-56c5-b63e-f92066feec02', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"professional rapport","instruction":"Выберите подходящее слово.","options":["professional rapport","follow through","strategic connection"],"sentence_template":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e27f2f9-93fc-57f9-8596-3c07fac24b54', '17a082e1-a086-56c5-b63e-f92066feec02', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Managing","a","stakeholder","expectation","requires","clarity","about","what","can","be","delivered",",","by","when",",","and","where","a","potential","conflict","of","interest","exists","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","exists","interest","of","conflict","potential","a","where","and",",","when","by",",","delivered","be","can","what","about","clarity","requires","expectation","stakeholder","a","Managing"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc16b210-85e9-52ad-bbe6-a76d952b0498', '17a082e1-a086-56c5-b63e-f92066feec02', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de44fa57-d6d4-5b48-aabc-d733dfde489d', '17a082e1-a086-56c5-b63e-f92066feec02', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Управление ожиданием заинтересованной стороны требует ясности относительно результата, срока и возможного конфликта интересов. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d15ea80a-cd69-53ca-922c-8a7c401a9089', '17a082e1-a086-56c5-b63e-f92066feec02', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists.","translation":"Управление ожиданием заинтересованной стороны требует ясности относительно результата, срока и возможного конфликта интересов.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Managing Stakeholder Expectations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff5e7670-4d3b-5ab6-9722-360d329e0fc4', '17a082e1-a086-56c5-b63e-f92066feec02', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“professional rapport” means a positive and trusting working relationship.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D11","is_correct":true,"text":"a positive and trusting working relationship"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D12","is_correct":false,"text":"a result an affected party anticipates"},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D13","is_correct":false,"text":"the quality of being trusted and convincing"}],"word":"professional rapport"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d03f1473-6716-5738-89c9-8cf6a7468e8f', '17a082e1-a086-56c5-b63e-f92066feec02', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists.","explanation":"The missing business expression is “professional rapport”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"professional rapport","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D14","is_correct":true},{"audio_text":"credibility","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D15","is_correct":false},{"audio_text":"conflict of interest","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D16","is_correct":false}],"sentence_template":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08472a1b-aed4-512d-b97e-d9920260675e', '17a082e1-a086-56c5-b63e-f92066feec02', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"professional rapport","explanation":"The complete business statement uses “professional rapport” precisely.","hint_prefix":"prof","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('439289a1-17de-5c15-95a1-8cb6410cd7e5', '17a082e1-a086-56c5-b63e-f92066feec02', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic connection","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D17","text":"strategic connection"},{"audio_text":"mutual benefit","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D18","text":"mutual benefit"},{"audio_text":"professional rapport","id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D19","text":"professional rapport"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e66062de-c4a5-5b0d-aef8-f20d5a7dc957', '17a082e1-a086-56c5-b63e-f92066feec02', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Managing Stakeholder Expectations”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D20","is_correct":true,"text":"Managing a stakeholder expectation requires clarity about what can be delivered, by when, and where a potential conflict of interest exists."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_STRATEGIC_NETWORKING_AND_STAKEHOLDER_RELATIONSHIPS_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('92389ffe-ab4b-56e4-8897-8f6767de9d18', '17a082e1-a086-56c5-b63e-f92066feec02', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83b1df95-b060-5bf6-9ad0-f5c75f1bc7a2', 'en', 'strategic connection', 'стратегически важный контакт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('564e7d76-72b8-5bac-bcb2-dabd5d077b34', 'en', 'mutual benefit', 'взаимная выгода', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05bb6b1c-dea0-54af-99eb-17d1157055bf', 'en', 'professional rapport', 'профессиональный контакт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be74390b-0a75-5117-997d-9be35c97d92e', 'en', 'stakeholder expectation', 'ожидание заинтересованной стороны', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d7d30fe-6c1b-5429-8546-341c8d2cb258', 'en', 'credibility', 'деловая репутация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('161cb8bb-ecb6-5140-ad02-3f4160d0095c', 'en', 'follow through', 'доводить до конца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83b1df95-b060-5bf6-9ad0-f5c75f1bc7a2', 'en', 'strategic connection', 'стратегически важный контакт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('564e7d76-72b8-5bac-bcb2-dabd5d077b34', 'en', 'mutual benefit', 'взаимная выгода', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05bb6b1c-dea0-54af-99eb-17d1157055bf', 'en', 'professional rapport', 'профессиональный контакт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be74390b-0a75-5117-997d-9be35c97d92e', 'en', 'stakeholder expectation', 'ожидание заинтересованной стороны', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d7d30fe-6c1b-5429-8546-341c8d2cb258', 'en', 'credibility', 'деловая репутация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('161cb8bb-ecb6-5140-ad02-3f4160d0095c', 'en', 'follow through', 'доводить до конца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83b1df95-b060-5bf6-9ad0-f5c75f1bc7a2', 'en', 'strategic connection', 'стратегически важный контакт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('564e7d76-72b8-5bac-bcb2-dabd5d077b34', 'en', 'mutual benefit', 'взаимная выгода', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05bb6b1c-dea0-54af-99eb-17d1157055bf', 'en', 'professional rapport', 'профессиональный контакт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be74390b-0a75-5117-997d-9be35c97d92e', 'en', 'stakeholder expectation', 'ожидание заинтересованной стороны', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d7d30fe-6c1b-5429-8546-341c8d2cb258', 'en', 'credibility', 'деловая репутация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('161cb8bb-ecb6-5140-ad02-3f4160d0095c', 'en', 'follow through', 'доводить до конца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '59ea606f-2504-513d-95a8-04cef66cb38b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '59ea606f-2504-513d-95a8-04cef66cb38b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual benefit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '59ea606f-2504-513d-95a8-04cef66cb38b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional rapport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '59ea606f-2504-513d-95a8-04cef66cb38b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '59ea606f-2504-513d-95a8-04cef66cb38b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '59ea606f-2504-513d-95a8-04cef66cb38b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '59ea606f-2504-513d-95a8-04cef66cb38b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual benefit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional rapport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '0b00b022-6cb2-5805-a901-7bd6e4d11f4f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '17a082e1-a086-56c5-b63e-f92066feec02', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '17a082e1-a086-56c5-b63e-f92066feec02', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual benefit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '17a082e1-a086-56c5-b63e-f92066feec02', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional rapport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '17a082e1-a086-56c5-b63e-f92066feec02', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '17a082e1-a086-56c5-b63e-f92066feec02', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '17a082e1-a086-56c5-b63e-f92066feec02', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '92389ffe-ab4b-56e4-8897-8f6767de9d18', id, '17a082e1-a086-56c5-b63e-f92066feec02', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
