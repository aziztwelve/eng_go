-- Track: C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('40b518e5-18fe-56cb-a816-7d723ce94c9f', 'C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION', 'Говорение: совместные задания, переговоры и оценка', 'Освойте экзаменационные навыки C1 по теме «Говорение: совместные задания, переговоры и оценка»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Speaking: Collaborative Tasks, Negotiation and Evaluation","ru":"Говорение: совместные задания, переговоры и оценка"}'::jsonb, '{"en":"Master C1 exam skills for speaking: collaborative tasks, negotiation and evaluation by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Говорение: совместные задания, переговоры и оценка»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Entering and Extending Discussion","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6059b3e9-49ea-53d0-b0c4-d5e885da6193', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D01","left":"turn-taking strategy","right":"стратегия смены реплик"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D02","left":"collaborative exchange","right":"совместное обсуждение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D03","left":"tentative proposal","right":"предварительное предложение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D04","left":"diplomatic challenge","right":"дипломатичное возражение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D05","left":"evaluation criterion","right":"критерий оценки"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D06","left":"partial agreement","right":"частичное согласие"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D07","left":"negotiated outcome","right":"согласованный результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b321f1d8-0990-5135-926d-d827acf62e85', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D08","is_correct":true,"text":"A strong turn-taking strategy links your contribution to the previous speaker before extending the collaborative exchange."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('601bfa38-e1e6-5ae8-895c-0da2c49ee976', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A strong turn-taking strategy links your contribution to the previous speaker before extending the collaborative exchange.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сильная стратегия смены реплик связывает ваш вклад с предыдущим высказыванием перед развитием совместного обсуждения.","target_language":"en","word_bank":["A","strong","turn-taking","strategy","links","your","contribution","to","the","previous","speaker","before","extending","the","collaborative","exchange","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6de8fc3-8e33-57d0-86e2-b8baaa5bd2a8', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"turn-taking strategy","instruction":"Выберите подходящее слово.","options":["turn-taking strategy","diplomatic challenge","partial agreement"],"sentence_template":"A strong ___ links your contribution to the previous speaker before extending the collaborative exchange."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e647122f-00e6-5325-be21-a834d6495cb2', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","strong","turn-taking","strategy","links","your","contribution","to","the","previous","speaker","before","extending","the","collaborative","exchange","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","exchange","collaborative","the","extending","before","speaker","previous","the","to","contribution","your","links","strategy","turn-taking","strong","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f6ca8fd-c309-563c-af05-876934f847b7', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A strong turn-taking strategy links your contribution to the previous speaker before extending the collaborative exchange. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a76652d-dcb2-5775-b016-cf08eace2e34', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A strong turn-taking strategy links your contribution to the previous speaker before extending the collaborative exchange. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Сильная стратегия смены реплик связывает ваш вклад с предыдущим высказыванием перед развитием совместного обсуждения. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8e859d7-8eea-5756-9a85-5149273ba85a', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A strong turn-taking strategy links your contribution to the previous speaker before extending the collaborative exchange.","translation":"Сильная стратегия смены реплик связывает ваш вклад с предыдущим высказыванием перед развитием совместного обсуждения.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Entering and Extending Discussion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0ae298a-6e2a-5920-b8af-5c8f3a631b36', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“turn-taking strategy” means a technique for entering or yielding the floor.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D11","is_correct":true,"text":"a technique for entering or yielding the floor"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D12","is_correct":false,"text":"interaction that develops ideas together"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D13","is_correct":false,"text":"a suggestion open to discussion"}],"word":"turn-taking strategy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc5cdff3-40c5-584a-bd88-de56622a60c5', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A strong turn-taking strategy links your contribution to the previous speaker before extending the collaborative exchange.","explanation":"The missing expression is “turn-taking strategy”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"turn-taking strategy","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D14","is_correct":true},{"audio_text":"tentative proposal","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D15","is_correct":false},{"audio_text":"evaluation criterion","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D16","is_correct":false}],"sentence_template":"A strong ___ links your contribution to the previous speaker before extending the collaborative exchange."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aeb83ef4-d57a-552f-9f05-6fce09baf596', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"turn-taking strategy","explanation":"The complete answer uses “turn-taking strategy” precisely.","hint_prefix":"turn","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A strong ___ links your contribution to the previous speaker before extending the collaborative exchange."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71566023-f002-5eb2-ad0a-3dbdebc25321', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turn-taking strategy","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D17","text":"turn-taking strategy"},{"audio_text":"collaborative exchange","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D18","text":"collaborative exchange"},{"audio_text":"tentative proposal","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D19","text":"tentative proposal"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c52e148-b897-50d5-aaf0-354c7dd680b1', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Entering and Extending Discussion” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D20","is_correct":true,"text":"A strong turn-taking strategy links your contribution to the previous speaker before extending the collaborative exchange."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40b518e5-18fe-56cb-a816-7d723ce94c9f', '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3de54f54-3251-5207-8bdc-da5648dc6784', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Challenging Ideas Diplomatically","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82809aac-a574-550b-ba51-a2f04e92320c', '3de54f54-3251-5207-8bdc-da5648dc6784', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D01","left":"turn-taking strategy","right":"стратегия смены реплик"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D02","left":"collaborative exchange","right":"совместное обсуждение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D03","left":"tentative proposal","right":"предварительное предложение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D04","left":"diplomatic challenge","right":"дипломатичное возражение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D05","left":"evaluation criterion","right":"критерий оценки"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D06","left":"partial agreement","right":"частичное согласие"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D07","left":"negotiated outcome","right":"согласованный результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('986626ee-22ab-56c5-96d6-aa7b67ec658d', '3de54f54-3251-5207-8bdc-da5648dc6784', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D08","is_correct":true,"text":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is collaborative exchange."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('398725e9-f03d-57ff-af8d-f939a06d6315', '3de54f54-3251-5207-8bdc-da5648dc6784', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is collaborative exchange.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Дипломатичное возражение может начинаться с частичного согласия перед указанием предположения, требующего анализа. Соответствующее понятие уровня C1 — «совместное обсуждение».","target_language":"en","word_bank":["A","diplomatic","challenge","may","begin","with","partial","agreement","before","identifying","the","assumption","requiring","closer","examination",".","The","relevant","C","1","concept","is","collaborative","exchange","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73b09d79-5401-50e9-81a0-a22fbdae4283', '3de54f54-3251-5207-8bdc-da5648dc6784', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"collaborative exchange","instruction":"Выберите подходящее слово.","options":["collaborative exchange","evaluation criterion","negotiated outcome"],"sentence_template":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7a4d15f-8118-59c6-b510-583965aa91f5', '3de54f54-3251-5207-8bdc-da5648dc6784', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","diplomatic","challenge","may","begin","with","partial","agreement","before","identifying","the","assumption","requiring","closer","examination",".","The","relevant","C","1","concept","is","collaborative","exchange","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","exchange","collaborative","is","concept","1","C","relevant","The",".","examination","closer","requiring","assumption","the","identifying","before","agreement","partial","with","begin","may","challenge","diplomatic","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac8aaa12-5e40-5ef6-9286-7e328f6a7f5f', '3de54f54-3251-5207-8bdc-da5648dc6784', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is collaborative exchange. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30d5942b-e725-5269-af4a-42f9258d376d', '3de54f54-3251-5207-8bdc-da5648dc6784', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is collaborative exchange. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Дипломатичное возражение может начинаться с частичного согласия перед указанием предположения, требующего анализа. Соответствующее понятие уровня C1 — «совместное обсуждение». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ed5031c-1e50-5da0-8c5f-f621d51ab046', '3de54f54-3251-5207-8bdc-da5648dc6784', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is collaborative exchange.","translation":"Дипломатичное возражение может начинаться с частичного согласия перед указанием предположения, требующего анализа. Соответствующее понятие уровня C1 — «совместное обсуждение».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Challenging Ideas Diplomatically"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83ca722f-2cbf-5863-8b0f-600a9f3d7dfa', '3de54f54-3251-5207-8bdc-da5648dc6784', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“collaborative exchange” means interaction that develops ideas together.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D11","is_correct":true,"text":"interaction that develops ideas together"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D12","is_correct":false,"text":"a suggestion open to discussion"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D13","is_correct":false,"text":"a respectful substantive objection"}],"word":"collaborative exchange"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe94951a-1626-5789-8708-9dbe178ea2f7', '3de54f54-3251-5207-8bdc-da5648dc6784', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is collaborative exchange.","explanation":"The missing expression is “collaborative exchange”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"collaborative exchange","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D14","is_correct":true},{"audio_text":"diplomatic challenge","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D15","is_correct":false},{"audio_text":"partial agreement","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D16","is_correct":false}],"sentence_template":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29d6b8a4-fdff-5de4-953d-19118688ac40', '3de54f54-3251-5207-8bdc-da5648dc6784', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"collaborative exchange","explanation":"The complete answer uses “collaborative exchange” precisely.","hint_prefix":"coll","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e2fc323-213c-5256-a99d-d2dafe0f408f', '3de54f54-3251-5207-8bdc-da5648dc6784', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turn-taking strategy","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D17","text":"turn-taking strategy"},{"audio_text":"collaborative exchange","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D18","text":"collaborative exchange"},{"audio_text":"tentative proposal","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D19","text":"tentative proposal"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4a9d7dc-9084-582a-91dd-14d948956ae8', '3de54f54-3251-5207-8bdc-da5648dc6784', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Challenging Ideas Diplomatically” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D20","is_correct":true,"text":"A diplomatic challenge may begin with partial agreement before identifying the assumption requiring closer examination. The relevant C1 concept is collaborative exchange."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40b518e5-18fe-56cb-a816-7d723ce94c9f', '3de54f54-3251-5207-8bdc-da5648dc6784', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5f70eea6-1362-56c6-b0dd-038c60c6b383', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Negotiating a Joint Decision","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae53a253-a038-52d0-840d-287aee43dfab', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D01","left":"turn-taking strategy","right":"стратегия смены реплик"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D02","left":"collaborative exchange","right":"совместное обсуждение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D03","left":"tentative proposal","right":"предварительное предложение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D04","left":"diplomatic challenge","right":"дипломатичное возражение"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D05","left":"evaluation criterion","right":"критерий оценки"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D06","left":"partial agreement","right":"частичное согласие"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D07","left":"negotiated outcome","right":"согласованный результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9f83052-6625-5c86-aecc-a3b222b06b50', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D08","is_correct":true,"text":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is tentative proposal."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c883ae5-3264-535b-9150-8528819b7fa0', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is tentative proposal.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Согласованный результат должен отражать заявленные критерии оценки, а не наиболее уверенно представленный вариант. Соответствующее понятие уровня C1 — «предварительное предложение».","target_language":"en","word_bank":["The","negotiated","outcome","should","reflect","the","stated","evaluation","criteria","rather","than","the","most","confidently","presented","option",".","The","relevant","C","1","concept","is","tentative","proposal","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ba6f63f-dc67-50a6-af85-bdbe65820e7c', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"tentative proposal","instruction":"Выберите подходящее слово.","options":["tentative proposal","partial agreement","turn-taking strategy"],"sentence_template":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abe0c6fc-8b63-5e3b-84d2-7d5ea2218722', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","negotiated","outcome","should","reflect","the","stated","evaluation","criteria","rather","than","the","most","confidently","presented","option",".","The","relevant","C","1","concept","is","tentative","proposal","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","proposal","tentative","is","concept","1","C","relevant","The",".","option","presented","confidently","most","the","than","rather","criteria","evaluation","stated","the","reflect","should","outcome","negotiated","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cc43b1d-1499-5ee9-b457-3c75f0bf1243', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is tentative proposal. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('865e2ebf-fe4d-5c7f-a8ce-45b821bed8b2', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is tentative proposal. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Согласованный результат должен отражать заявленные критерии оценки, а не наиболее уверенно представленный вариант. Соответствующее понятие уровня C1 — «предварительное предложение». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e551c892-064b-55b0-8f22-c65943c89da7', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is tentative proposal.","translation":"Согласованный результат должен отражать заявленные критерии оценки, а не наиболее уверенно представленный вариант. Соответствующее понятие уровня C1 — «предварительное предложение».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Negotiating a Joint Decision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a46024bc-9d70-5962-bc94-0143aeee21bc', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“tentative proposal” means a suggestion open to discussion.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D11","is_correct":true,"text":"a suggestion open to discussion"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D12","is_correct":false,"text":"a respectful substantive objection"},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D13","is_correct":false,"text":"a standard used to compare choices"}],"word":"tentative proposal"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cf84e00-6482-58dd-b5d3-c3508239650d', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is tentative proposal.","explanation":"The missing expression is “tentative proposal”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tentative proposal","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D14","is_correct":true},{"audio_text":"evaluation criterion","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D15","is_correct":false},{"audio_text":"negotiated outcome","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D16","is_correct":false}],"sentence_template":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ff5b834-9623-5f26-93c3-1d88a11c3176', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"tentative proposal","explanation":"The complete answer uses “tentative proposal” precisely.","hint_prefix":"tent","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12d455ff-93a4-5195-9c38-aed210beac6b', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turn-taking strategy","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D17","text":"turn-taking strategy"},{"audio_text":"collaborative exchange","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D18","text":"collaborative exchange"},{"audio_text":"tentative proposal","id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D19","text":"tentative proposal"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('196e0dd4-67cc-5164-8f8f-51c4047f5d21', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Negotiating a Joint Decision” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D20","is_correct":true,"text":"The negotiated outcome should reflect the stated evaluation criteria rather than the most confidently presented option. The relevant C1 concept is tentative proposal."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_SPEAKING_COLLABORATIVE_TASKS_NEGOTIATION_AND_EVALUATION_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40b518e5-18fe-56cb-a816-7d723ce94c9f', '5f70eea6-1362-56c6-b0dd-038c60c6b383', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('38378d0e-8a7a-5d92-afa4-2d5b1a055615', 'en', 'turn-taking strategy', 'стратегия смены реплик', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e1156497-c275-5235-af0b-1b6b532ee7f2', 'en', 'collaborative exchange', 'совместное обсуждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f9794f8-068f-5e2d-9696-cb6b3aeb15a3', 'en', 'tentative proposal', 'предварительное предложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25d0c00e-bfff-50cd-8a01-751e79d993a6', 'en', 'diplomatic challenge', 'дипломатичное возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7879d958-af54-5df7-a0c0-7ecb7475031b', 'en', 'evaluation criterion', 'критерий оценки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1d91ace-6406-5ad1-8de8-e13c659a498f', 'en', 'partial agreement', 'частичное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4869e788-586b-5060-bcee-2276dc125dda', 'en', 'negotiated outcome', 'согласованный результат', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('38378d0e-8a7a-5d92-afa4-2d5b1a055615', 'en', 'turn-taking strategy', 'стратегия смены реплик', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e1156497-c275-5235-af0b-1b6b532ee7f2', 'en', 'collaborative exchange', 'совместное обсуждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f9794f8-068f-5e2d-9696-cb6b3aeb15a3', 'en', 'tentative proposal', 'предварительное предложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25d0c00e-bfff-50cd-8a01-751e79d993a6', 'en', 'diplomatic challenge', 'дипломатичное возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7879d958-af54-5df7-a0c0-7ecb7475031b', 'en', 'evaluation criterion', 'критерий оценки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1d91ace-6406-5ad1-8de8-e13c659a498f', 'en', 'partial agreement', 'частичное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4869e788-586b-5060-bcee-2276dc125dda', 'en', 'negotiated outcome', 'согласованный результат', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('38378d0e-8a7a-5d92-afa4-2d5b1a055615', 'en', 'turn-taking strategy', 'стратегия смены реплик', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e1156497-c275-5235-af0b-1b6b532ee7f2', 'en', 'collaborative exchange', 'совместное обсуждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f9794f8-068f-5e2d-9696-cb6b3aeb15a3', 'en', 'tentative proposal', 'предварительное предложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25d0c00e-bfff-50cd-8a01-751e79d993a6', 'en', 'diplomatic challenge', 'дипломатичное возражение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7879d958-af54-5df7-a0c0-7ecb7475031b', 'en', 'evaluation criterion', 'критерий оценки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1d91ace-6406-5ad1-8de8-e13c659a498f', 'en', 'partial agreement', 'частичное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4869e788-586b-5060-bcee-2276dc125dda', 'en', 'negotiated outcome', 'согласованный результат', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'turn-taking strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'collaborative exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative proposal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluation criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'partial agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '761a3fc4-a1d1-5c1d-8f17-556cd69b76f0', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiated outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '3de54f54-3251-5207-8bdc-da5648dc6784', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'turn-taking strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '3de54f54-3251-5207-8bdc-da5648dc6784', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'collaborative exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '3de54f54-3251-5207-8bdc-da5648dc6784', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative proposal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '3de54f54-3251-5207-8bdc-da5648dc6784', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '3de54f54-3251-5207-8bdc-da5648dc6784', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluation criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '3de54f54-3251-5207-8bdc-da5648dc6784', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'partial agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '3de54f54-3251-5207-8bdc-da5648dc6784', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiated outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '5f70eea6-1362-56c6-b0dd-038c60c6b383', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'turn-taking strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '5f70eea6-1362-56c6-b0dd-038c60c6b383', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'collaborative exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '5f70eea6-1362-56c6-b0dd-038c60c6b383', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative proposal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '5f70eea6-1362-56c6-b0dd-038c60c6b383', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '5f70eea6-1362-56c6-b0dd-038c60c6b383', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluation criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '5f70eea6-1362-56c6-b0dd-038c60c6b383', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'partial agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40b518e5-18fe-56cb-a816-7d723ce94c9f', id, '5f70eea6-1362-56c6-b0dd-038c60c6b383', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiated outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
