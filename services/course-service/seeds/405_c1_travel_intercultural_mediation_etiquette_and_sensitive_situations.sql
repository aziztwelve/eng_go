-- Track: C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', 'C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS', 'Межкультурное посредничество, этикет и деликатные ситуации', 'Освойте практический английский C1 по теме «Межкультурное посредничество, этикет и деликатные ситуации», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Intercultural Mediation, Etiquette and Sensitive Situations","ru":"Межкультурное посредничество, этикет и деликатные ситуации"}'::jsonb, '{"en":"Master practical C1 English for intercultural mediation, etiquette and sensitive situations by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Межкультурное посредничество, этикет и деликатные ситуации», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4f107f26-a7d0-5e42-89c6-dc3b4a73a052', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Interpreting Unfamiliar Social Norms","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfc45cf2-31de-5045-a8af-9623e3b65174', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D01","left":"cultural convention","right":"культурная норма"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D02","left":"contextual cue","right":"контекстуальный сигнал"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D03","left":"unintended offence","right":"непреднамеренная обида"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D04","left":"face-saving language","right":"язык сохранения достоинства"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D05","left":"cultural assumption","right":"культурное предположение"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D06","left":"mediated explanation","right":"посредническое объяснение"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D07","left":"mutual accommodation","right":"взаимное приспособление"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3460ee3-accf-5a09-adad-5042bf42274b', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D08","is_correct":true,"text":"Before judging the behaviour, look for a contextual cue that explains the local cultural convention."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c02cbeac-fdbc-5e10-8dbd-8a361c6bfe49', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before judging the behaviour, look for a contextual cue that explains the local cultural convention.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем оценивать поведение, найдите контекстуальный сигнал, объясняющий местную культурную норму.","target_language":"en","word_bank":["Before","judging","the","behaviour",",","look","for","a","contextual","cue","that","explains","the","local","cultural","convention","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('183ae5f3-bd65-527f-859e-e2aa8fdb5889', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cultural convention","instruction":"Выберите подходящее слово.","options":["cultural convention","face-saving language","mediated explanation"],"sentence_template":"Before judging the behaviour, look for a contextual cue that explains the local ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('258f5034-19b7-51a2-988c-22ee7f6d9d4c', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","judging","the","behaviour",",","look","for","a","contextual","cue","that","explains","the","local","cultural","convention","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","convention","cultural","local","the","explains","that","cue","contextual","a","for","look",",","behaviour","the","judging","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91c1ce18-e430-5983-80c2-3e1122af4b2f', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before judging the behaviour, look for a contextual cue that explains the local cultural convention. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b09a131-d48e-5ad3-89f5-50e2d8cbff27', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before judging the behaviour, look for a contextual cue that explains the local cultural convention. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Прежде чем оценивать поведение, найдите контекстуальный сигнал, объясняющий местную культурную норму. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3943a607-2393-5b24-ab50-92341466b239', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Before judging the behaviour, look for a contextual cue that explains the local cultural convention.","translation":"Прежде чем оценивать поведение, найдите контекстуальный сигнал, объясняющий местную культурную норму.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Interpreting Unfamiliar Social Norms"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42a8e4cb-c1da-52d1-94e6-7c56c2094cb5', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cultural convention” means an established social practice within a community.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D11","is_correct":true,"text":"an established social practice within a community"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D12","is_correct":false,"text":"a detail helping someone interpret behaviour"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D13","is_correct":false,"text":"hurt caused without deliberate disrespect"}],"word":"cultural convention"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('564badae-7370-5d7c-a36c-835099e721b3', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before judging the behaviour, look for a contextual cue that explains the local cultural convention.","explanation":"The missing C1 travel expression is “cultural convention”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cultural convention","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D14","is_correct":true},{"audio_text":"unintended offence","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D15","is_correct":false},{"audio_text":"cultural assumption","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D16","is_correct":false}],"sentence_template":"Before judging the behaviour, look for a contextual cue that explains the local ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4e42425-da0b-575c-a357-5b59d5eb2921', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cultural convention","explanation":"The complete statement uses “cultural convention” accurately.","hint_prefix":"cult","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before judging the behaviour, look for a contextual cue that explains the local ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b157846-19a6-59be-b2bd-039d51249780', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural convention","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D17","text":"cultural convention"},{"audio_text":"contextual cue","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D18","text":"contextual cue"},{"audio_text":"unintended offence","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D19","text":"unintended offence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cafae244-3b48-552d-9b44-8efc29a5e29f', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Interpreting Unfamiliar Social Norms”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D20","is_correct":true,"text":"Before judging the behaviour, look for a contextual cue that explains the local cultural convention."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9de4bfe4-18dd-5469-9009-752da2b28586', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Repairing an Unintended Offence","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bdb7ac7-8fb1-5b8e-b3a9-9e832f292d07', '9de4bfe4-18dd-5469-9009-752da2b28586', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D01","left":"cultural convention","right":"культурная норма"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D02","left":"contextual cue","right":"контекстуальный сигнал"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D03","left":"unintended offence","right":"непреднамеренная обида"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D04","left":"face-saving language","right":"язык сохранения достоинства"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D05","left":"cultural assumption","right":"культурное предположение"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D06","left":"mediated explanation","right":"посредническое объяснение"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D07","left":"mutual accommodation","right":"взаимное приспособление"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc76307a-aa4a-5a05-b2b4-e1ca665933ed', '9de4bfe4-18dd-5469-9009-752da2b28586', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D08","is_correct":true,"text":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is contextual cue."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcba1906-742b-5049-af26-4f51338b5dc3', '9de4bfe4-18dd-5469-9009-752da2b28586', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is contextual cue.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я прошу прощения за непреднамеренную обиду; я неправильно понял норму и не хотел проявить неуважение. Соответствующее выражение для путешествий — «контекстуальный сигнал».","target_language":"en","word_bank":["I","apologise","for","the","unintended","offence",";","I","misunderstood","the","convention","and","did","not","intend","to","show","disrespect",".","The","relevant","travel","expression","is","contextual","cue","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e150e4c6-a238-5eb3-84c9-cacc7772f0ff', '9de4bfe4-18dd-5469-9009-752da2b28586', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"contextual cue","instruction":"Выберите подходящее слово.","options":["contextual cue","cultural assumption","mutual accommodation"],"sentence_template":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d28aa658-b53e-55cc-8565-0a33cad85144', '9de4bfe4-18dd-5469-9009-752da2b28586', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","apologise","for","the","unintended","offence",";","I","misunderstood","the","convention","and","did","not","intend","to","show","disrespect",".","The","relevant","travel","expression","is","contextual","cue","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","cue","contextual","is","expression","travel","relevant","The",".","disrespect","show","to","intend","not","did","and","convention","the","misunderstood","I",";","offence","unintended","the","for","apologise","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fee33887-7d5d-57cb-a91a-857874c9dc7c', '9de4bfe4-18dd-5469-9009-752da2b28586', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is contextual cue. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ae88e90-8627-5796-8118-25e262dfb9b2', '9de4bfe4-18dd-5469-9009-752da2b28586', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is contextual cue. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Я прошу прощения за непреднамеренную обиду; я неправильно понял норму и не хотел проявить неуважение. Соответствующее выражение для путешествий — «контекстуальный сигнал». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23f659d2-e24a-505a-a551-0a6329132371', '9de4bfe4-18dd-5469-9009-752da2b28586', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is contextual cue.","translation":"Я прошу прощения за непреднамеренную обиду; я неправильно понял норму и не хотел проявить неуважение. Соответствующее выражение для путешествий — «контекстуальный сигнал».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Repairing an Unintended Offence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d35278ac-cf43-51f5-aff0-434762f05aa0', '9de4bfe4-18dd-5469-9009-752da2b28586', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“contextual cue” means a detail helping someone interpret behaviour.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D11","is_correct":true,"text":"a detail helping someone interpret behaviour"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D12","is_correct":false,"text":"hurt caused without deliberate disrespect"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D13","is_correct":false,"text":"wording that avoids public embarrassment"}],"word":"contextual cue"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbed046f-dff2-5141-9388-098ef0ee6cbf', '9de4bfe4-18dd-5469-9009-752da2b28586', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is contextual cue.","explanation":"The missing C1 travel expression is “contextual cue”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"contextual cue","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D14","is_correct":true},{"audio_text":"face-saving language","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D15","is_correct":false},{"audio_text":"mediated explanation","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D16","is_correct":false}],"sentence_template":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4382413e-36de-5a70-ba72-354ae1a4a902', '9de4bfe4-18dd-5469-9009-752da2b28586', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"contextual cue","explanation":"The complete statement uses “contextual cue” accurately.","hint_prefix":"cont","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3553fd9f-27bd-5e37-b93e-6ffe3d6ff321', '9de4bfe4-18dd-5469-9009-752da2b28586', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural convention","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D17","text":"cultural convention"},{"audio_text":"contextual cue","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D18","text":"contextual cue"},{"audio_text":"unintended offence","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D19","text":"unintended offence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bcf04f2-7022-5cc6-a49a-46dd521d7847', '9de4bfe4-18dd-5469-9009-752da2b28586', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Repairing an Unintended Offence”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D20","is_correct":true,"text":"I apologise for the unintended offence; I misunderstood the convention and did not intend to show disrespect. The relevant travel expression is contextual cue."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', '9de4bfe4-18dd-5469-9009-752da2b28586', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c116a0fb-63b1-570e-b52d-3d12b56136d4', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Mediating Different Expectations","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('699e0e70-aa1a-588c-97a7-ccb9d70f6a36', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D01","left":"cultural convention","right":"культурная норма"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D02","left":"contextual cue","right":"контекстуальный сигнал"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D03","left":"unintended offence","right":"непреднамеренная обида"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D04","left":"face-saving language","right":"язык сохранения достоинства"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D05","left":"cultural assumption","right":"культурное предположение"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D06","left":"mediated explanation","right":"посредническое объяснение"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D07","left":"mutual accommodation","right":"взаимное приспособление"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('787f16a2-226e-5304-aefd-64c8a3043bcf', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D08","is_correct":true,"text":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is unintended offence."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07de3363-c78c-5b1d-b257-4b0f32fb5f53', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is unintended offence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Посредническое объяснение должно выявить культурные предположения каждой стороны и предложить взаимное приспособление без стереотипов. Соответствующее выражение для путешествий — «непреднамеренная обида».","target_language":"en","word_bank":["A","mediated","explanation","should","identify","each","cultural","assumption","and","invite","mutual","accommodation","without","stereotyping","either","group",".","The","relevant","travel","expression","is","unintended","offence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8201fcea-cf99-5465-b66d-b904d4812dee', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"unintended offence","instruction":"Выберите подходящее слово.","options":["unintended offence","mediated explanation","cultural convention"],"sentence_template":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa3475ab-9703-5167-bb88-d9eeb6292853', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","mediated","explanation","should","identify","each","cultural","assumption","and","invite","mutual","accommodation","without","stereotyping","either","group",".","The","relevant","travel","expression","is","unintended","offence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","offence","unintended","is","expression","travel","relevant","The",".","group","either","stereotyping","without","accommodation","mutual","invite","and","assumption","cultural","each","identify","should","explanation","mediated","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b3a39a6-c5df-573d-834e-cfd5536b00fc', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is unintended offence. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd643d93-260a-5dc5-b8ae-8de4d259b7d0', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is unintended offence. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Посредническое объяснение должно выявить культурные предположения каждой стороны и предложить взаимное приспособление без стереотипов. Соответствующее выражение для путешествий — «непреднамеренная обида». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcb2b7b5-4abf-5ea1-a9b9-1eca2a4b1e30', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is unintended offence.","translation":"Посредническое объяснение должно выявить культурные предположения каждой стороны и предложить взаимное приспособление без стереотипов. Соответствующее выражение для путешествий — «непреднамеренная обида».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Mediating Different Expectations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae59007f-a3ee-5391-bf74-dd97b21e888e', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“unintended offence” means hurt caused without deliberate disrespect.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D11","is_correct":true,"text":"hurt caused without deliberate disrespect"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D12","is_correct":false,"text":"wording that avoids public embarrassment"},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D13","is_correct":false,"text":"an expectation shaped by one’s own culture"}],"word":"unintended offence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6828cdf2-770c-537d-8e4b-867e256e3b06', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is unintended offence.","explanation":"The missing C1 travel expression is “unintended offence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"unintended offence","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D14","is_correct":true},{"audio_text":"cultural assumption","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D15","is_correct":false},{"audio_text":"mutual accommodation","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D16","is_correct":false}],"sentence_template":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23247ab9-187e-58b6-9981-a047f26856dd', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"unintended offence","explanation":"The complete statement uses “unintended offence” accurately.","hint_prefix":"unin","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bd425aa-20bb-5752-9e8b-7999ae0ec41f', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural convention","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D17","text":"cultural convention"},{"audio_text":"contextual cue","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D18","text":"contextual cue"},{"audio_text":"unintended offence","id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D19","text":"unintended offence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('092fa722-5edf-5310-8614-e5a3061458d0', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Mediating Different Expectations”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D20","is_correct":true,"text":"A mediated explanation should identify each cultural assumption and invite mutual accommodation without stereotyping either group. The relevant travel expression is unintended offence."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_INTERCULTURAL_MEDIATION_ETIQUETTE_AND_SENSITIVE_SITUATIONS_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3714c00f-75f2-505e-93ac-cbb79d00523d', 'en', 'cultural convention', 'культурная норма', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8af64f8-5bd1-5e3e-a039-7b9ad8fd985a', 'en', 'contextual cue', 'контекстуальный сигнал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a8f5418-8d88-558c-96bf-ab3438e4c48d', 'en', 'unintended offence', 'непреднамеренная обида', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1d706a6-ecd3-574f-928c-e515bfe27e9c', 'en', 'face-saving language', 'язык сохранения достоинства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70f7a904-2b94-51c1-b921-845fd7e713c3', 'en', 'cultural assumption', 'культурное предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a00aae6-037a-56b6-b75b-7c162476373e', 'en', 'mediated explanation', 'посредническое объяснение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1ad20da-744e-5fbc-88b0-f8b6e893a4c5', 'en', 'mutual accommodation', 'взаимное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3714c00f-75f2-505e-93ac-cbb79d00523d', 'en', 'cultural convention', 'культурная норма', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8af64f8-5bd1-5e3e-a039-7b9ad8fd985a', 'en', 'contextual cue', 'контекстуальный сигнал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a8f5418-8d88-558c-96bf-ab3438e4c48d', 'en', 'unintended offence', 'непреднамеренная обида', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1d706a6-ecd3-574f-928c-e515bfe27e9c', 'en', 'face-saving language', 'язык сохранения достоинства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70f7a904-2b94-51c1-b921-845fd7e713c3', 'en', 'cultural assumption', 'культурное предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a00aae6-037a-56b6-b75b-7c162476373e', 'en', 'mediated explanation', 'посредническое объяснение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1ad20da-744e-5fbc-88b0-f8b6e893a4c5', 'en', 'mutual accommodation', 'взаимное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3714c00f-75f2-505e-93ac-cbb79d00523d', 'en', 'cultural convention', 'культурная норма', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8af64f8-5bd1-5e3e-a039-7b9ad8fd985a', 'en', 'contextual cue', 'контекстуальный сигнал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a8f5418-8d88-558c-96bf-ab3438e4c48d', 'en', 'unintended offence', 'непреднамеренная обида', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1d706a6-ecd3-574f-928c-e515bfe27e9c', 'en', 'face-saving language', 'язык сохранения достоинства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70f7a904-2b94-51c1-b921-845fd7e713c3', 'en', 'cultural assumption', 'культурное предположение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a00aae6-037a-56b6-b75b-7c162476373e', 'en', 'mediated explanation', 'посредническое объяснение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1ad20da-744e-5fbc-88b0-f8b6e893a4c5', 'en', 'mutual accommodation', 'взаимное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual cue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended offence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'face-saving language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'mediated explanation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '4f107f26-a7d0-5e42-89c6-dc3b4a73a052', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual accommodation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '9de4bfe4-18dd-5469-9009-752da2b28586', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '9de4bfe4-18dd-5469-9009-752da2b28586', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual cue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '9de4bfe4-18dd-5469-9009-752da2b28586', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended offence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '9de4bfe4-18dd-5469-9009-752da2b28586', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'face-saving language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '9de4bfe4-18dd-5469-9009-752da2b28586', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '9de4bfe4-18dd-5469-9009-752da2b28586', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'mediated explanation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, '9de4bfe4-18dd-5469-9009-752da2b28586', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual accommodation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual cue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended offence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'face-saving language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'mediated explanation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9fd1694e-959b-56c6-9a93-2c0cfbbfd2d5', id, 'c116a0fb-63b1-570e-b52d-3d12b56136d4', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual accommodation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
