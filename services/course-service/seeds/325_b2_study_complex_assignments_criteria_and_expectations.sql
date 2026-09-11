-- Track: B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a989c552-138c-5a03-b159-a83f2357fa9f', 'B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS', 'Сложные задания, критерии и ожидания', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Сложные задания, критерии и ожидания»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Complex Assignments, Criteria and Expectations","ru":"Сложные задания, критерии и ожидания"}'::jsonb, '{"en":"Develop independent B2 academic skills for complex assignments, criteria and expectations by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Сложные задания, критерии и ожидания»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('68909b9d-45f3-5319-a128-9eacd4903d5f', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Interpreting a Brief","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4c81fda-9ea8-5ed2-a9a5-18e4c3fbec81', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D01","left":"assignment brief","right":"описание задания"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D02","left":"assessment criterion","right":"критерий оценивания"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D03","left":"scope","right":"объём и границы"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D04","left":"deliverable","right":"итоговый материал"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D05","left":"ambiguous requirement","right":"неоднозначное требование"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D06","left":"meet a deadline","right":"соблюсти срок"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D07","left":"negotiate an extension","right":"согласовать продление срока"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a555e57e-0a4f-58f6-b6f3-580b32972e21', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D08","is_correct":true,"text":"The assignment brief should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7ce5b24-1b28-5478-9b85-d53d06896958', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The assignment brief should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Описание задания следует проанализировать до начала исследования, чтобы каждый итоговый материал соответствовал заявленной цели и предполагаемой аудитории.","target_language":"en","word_bank":["The","assignment","brief","should","be","analysed","before","research","begins","so","that","every","deliverable","addresses","the","stated","purpose","and","intended","audience","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('549ae3c9-c51d-5c95-a1e3-60e567133f90', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"assignment brief","instruction":"Выберите подходящее слово.","options":["assignment brief","deliverable","meet a deadline"],"sentence_template":"The ___ should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('713a602c-b807-509b-bc75-b429eb6836a4', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","assignment","brief","should","be","analysed","before","research","begins","so","that","every","deliverable","addresses","the","stated","purpose","and","intended","audience","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","audience","intended","and","purpose","stated","the","addresses","deliverable","every","that","so","begins","research","before","analysed","be","should","brief","assignment","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0f304fd-4727-5b2e-a284-c20f11b5a928', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The assignment brief should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8a817e5-e8ac-5571-a5f0-999f0f996b5e', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The assignment brief should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Описание задания следует проанализировать до начала исследования, чтобы каждый итоговый материал соответствовал заявленной цели и предполагаемой аудитории. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9444b6ba-6185-5a38-ad97-e19dcc6ab9fc', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"The assignment brief should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience.","translation":"Описание задания следует проанализировать до начала исследования, чтобы каждый итоговый материал соответствовал заявленной цели и предполагаемой аудитории.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Interpreting a Brief"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d8ca74b-6fbf-5db8-9f6e-ceb998abaceb', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“assignment brief” means the document defining a task and its requirements.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D11","is_correct":true,"text":"the document defining a task and its requirements"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D12","is_correct":false,"text":"a standard used to judge academic work"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D13","is_correct":false,"text":"the range and limits of a project"}],"word":"assignment brief"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6e76863-1a14-5fa9-9a9e-fb74398aafdd', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The assignment brief should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience.","explanation":"The missing academic expression is “assignment brief”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"assignment brief","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D14","is_correct":true},{"audio_text":"scope","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D15","is_correct":false},{"audio_text":"ambiguous requirement","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D16","is_correct":false}],"sentence_template":"The ___ should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1ecb8bf-9a4a-551c-8ed9-a39ffe717935', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"assignment brief","explanation":"The complete academic statement uses “assignment brief” precisely.","hint_prefix":"assi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2416dbf8-086e-59c2-a4f4-18dfdcbbfb5f', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"assignment brief","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D17","text":"assignment brief"},{"audio_text":"assessment criterion","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D18","text":"assessment criterion"},{"audio_text":"scope","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D19","text":"scope"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f47f793-077e-5a6a-a67b-5df1b613eed8', '68909b9d-45f3-5319-a128-9eacd4903d5f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Interpreting a Brief”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D20","is_correct":true,"text":"The assignment brief should be analysed before research begins so that every deliverable addresses the stated purpose and intended audience."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a989c552-138c-5a03-b159-a83f2357fa9f', '68909b9d-45f3-5319-a128-9eacd4903d5f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dc1d8672-3476-5973-890c-a1f94aa668d4', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Understanding Assessment Criteria","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84fcf3b1-a927-5741-be01-a2e2dbc57041', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D01","left":"assignment brief","right":"описание задания"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D02","left":"assessment criterion","right":"критерий оценивания"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D03","left":"scope","right":"объём и границы"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D04","left":"deliverable","right":"итоговый материал"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D05","left":"ambiguous requirement","right":"неоднозначное требование"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D06","left":"meet a deadline","right":"соблюсти срок"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D07","left":"negotiate an extension","right":"согласовать продление срока"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('801c386a-a07e-58e9-b319-ea5c44a181f6', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D08","is_correct":true,"text":"An assessment criterion indicates not only what must be included but also the level of analysis required for a high-quality response."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4573d68-58d2-5e2f-831c-ff3767cda811', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An assessment criterion indicates not only what must be included but also the level of analysis required for a high-quality response.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Критерий оценивания показывает не только то, что необходимо включить, но и уровень анализа, требуемый для качественного ответа.","target_language":"en","word_bank":["An","assessment","criterion","indicates","not","only","what","must","be","included","but","also","the","level","of","analysis","required","for","a","high-quality","response","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29d8922b-2874-596a-ab0c-77f6429d4ae1', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"assessment criterion","instruction":"Выберите подходящее слово.","options":["assessment criterion","ambiguous requirement","negotiate an extension"],"sentence_template":"An ___ indicates not only what must be included but also the level of analysis required for a high-quality response."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ba2f611-601d-5eb2-9281-e1f7a5ad8d1d', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","assessment","criterion","indicates","not","only","what","must","be","included","but","also","the","level","of","analysis","required","for","a","high-quality","response","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","response","high-quality","a","for","required","analysis","of","level","the","also","but","included","be","must","what","only","not","indicates","criterion","assessment","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b46e68d3-7cd8-5d3f-8fc6-2efdc7929c07', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An assessment criterion indicates not only what must be included but also the level of analysis required for a high-quality response. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe2706bb-d0cb-51a4-8173-956ed7dcf89e', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An assessment criterion indicates not only what must be included but also the level of analysis required for a high-quality response. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Критерий оценивания показывает не только то, что необходимо включить, но и уровень анализа, требуемый для качественного ответа. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f3358d8-0bd5-5e0a-b916-96f96c030d85', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"An assessment criterion indicates not only what must be included but also the level of analysis required for a high-quality response.","translation":"Критерий оценивания показывает не только то, что необходимо включить, но и уровень анализа, требуемый для качественного ответа.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Understanding Assessment Criteria"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abb820bd-da03-53ea-9e37-0ab77c17152e', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“assessment criterion” means a standard used to judge academic work.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D11","is_correct":true,"text":"a standard used to judge academic work"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D12","is_correct":false,"text":"the range and limits of a project"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D13","is_correct":false,"text":"a required output submitted for assessment"}],"word":"assessment criterion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('505c9493-a3a6-56c4-ae01-d766a440ca2d', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An assessment criterion indicates not only what must be included but also the level of analysis required for a high-quality response.","explanation":"The missing academic expression is “assessment criterion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"assessment criterion","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D14","is_correct":true},{"audio_text":"deliverable","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D15","is_correct":false},{"audio_text":"meet a deadline","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D16","is_correct":false}],"sentence_template":"An ___ indicates not only what must be included but also the level of analysis required for a high-quality response."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0b263e2-20ed-577c-a938-12e278c018a1', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"assessment criterion","explanation":"The complete academic statement uses “assessment criterion” precisely.","hint_prefix":"asse","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An ___ indicates not only what must be included but also the level of analysis required for a high-quality response."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7c6d665-de26-50e2-acfe-976eb3d18db5', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"assignment brief","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D17","text":"assignment brief"},{"audio_text":"assessment criterion","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D18","text":"assessment criterion"},{"audio_text":"scope","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D19","text":"scope"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86094fa8-2e1b-549d-b104-46c34d86410f', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Understanding Assessment Criteria”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D20","is_correct":true,"text":"An assessment criterion indicates not only what must be included but also the level of analysis required for a high-quality response."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a989c552-138c-5a03-b159-a83f2357fa9f', 'dc1d8672-3476-5973-890c-a1f94aa668d4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Negotiating Scope and Deadlines","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e95b8a57-fe6a-5fe5-9321-a20a718ba2c0', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D01","left":"assignment brief","right":"описание задания"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D02","left":"assessment criterion","right":"критерий оценивания"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D03","left":"scope","right":"объём и границы"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D04","left":"deliverable","right":"итоговый материал"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D05","left":"ambiguous requirement","right":"неоднозначное требование"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D06","left":"meet a deadline","right":"соблюсти срок"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D07","left":"negotiate an extension","right":"согласовать продление срока"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b04f1c49-0663-534f-81e9-ab0584a554c2', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D08","is_correct":true,"text":"If an ambiguous requirement affects the project’s scope, it is better to seek clarification early than risk producing irrelevant work."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f00fc50-4e11-58a1-b55b-ad0acd9ca43d', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If an ambiguous requirement affects the project’s scope, it is better to seek clarification early than risk producing irrelevant work.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Если неоднозначное требование влияет на объём и границы проекта, лучше запросить уточнение заранее, чем рисковать созданием неуместной работы.","target_language":"en","word_bank":["If","an","ambiguous","requirement","affects","the","project’s","scope",",","it","is","better","to","seek","clarification","early","than","risk","producing","irrelevant","work","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eec08b43-8363-5754-999d-3a7ad1868bd6', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"scope","instruction":"Выберите подходящее слово.","options":["scope","meet a deadline","assignment brief"],"sentence_template":"If an ambiguous requirement affects the project’s ___, it is better to seek clarification early than risk producing irrelevant work."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80dc5dde-999c-5c40-bfa9-a6bfa90abca1', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["If","an","ambiguous","requirement","affects","the","project’s","scope",",","it","is","better","to","seek","clarification","early","than","risk","producing","irrelevant","work","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","work","irrelevant","producing","risk","than","early","clarification","seek","to","better","is","it",",","scope","project’s","the","affects","requirement","ambiguous","an","If"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('731e8776-71b7-5b54-9f18-a1ca5b22da1b', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If an ambiguous requirement affects the project’s scope, it is better to seek clarification early than risk producing irrelevant work. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dd05cb0-c8da-5299-b76e-14b4f241c188', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If an ambiguous requirement affects the project’s scope, it is better to seek clarification early than risk producing irrelevant work. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Если неоднозначное требование влияет на объём и границы проекта, лучше запросить уточнение заранее, чем рисковать созданием неуместной работы. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c851bc9-ad51-5e33-945a-16f49de7252a', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"If an ambiguous requirement affects the project’s scope, it is better to seek clarification early than risk producing irrelevant work.","translation":"Если неоднозначное требование влияет на объём и границы проекта, лучше запросить уточнение заранее, чем рисковать созданием неуместной работы.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Negotiating Scope and Deadlines"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77daddfd-fada-5f61-95b6-72cbd2d16ba3', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“scope” means the range and limits of a project.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D11","is_correct":true,"text":"the range and limits of a project"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D12","is_correct":false,"text":"a required output submitted for assessment"},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D13","is_correct":false,"text":"an instruction open to more than one interpretation"}],"word":"scope"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87ae476c-3d3e-5f2c-8dd7-a5942c61c964', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If an ambiguous requirement affects the project’s scope, it is better to seek clarification early than risk producing irrelevant work.","explanation":"The missing academic expression is “scope”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"scope","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D14","is_correct":true},{"audio_text":"ambiguous requirement","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D15","is_correct":false},{"audio_text":"negotiate an extension","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D16","is_correct":false}],"sentence_template":"If an ambiguous requirement affects the project’s ___, it is better to seek clarification early than risk producing irrelevant work."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f5b1046-81d2-597b-9d17-2314d6088a03', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"scope","explanation":"The complete academic statement uses “scope” precisely.","hint_prefix":"scop","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"If an ambiguous requirement affects the project’s ___, it is better to seek clarification early than risk producing irrelevant work."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0a632d2-4586-5270-a992-a9c1edd8f1c4', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"assignment brief","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D17","text":"assignment brief"},{"audio_text":"assessment criterion","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D18","text":"assessment criterion"},{"audio_text":"scope","id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D19","text":"scope"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('459ec09d-f4a4-5962-858b-d8d514cdc8a8', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Negotiating Scope and Deadlines”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D20","is_correct":true,"text":"If an ambiguous requirement affects the project’s scope, it is better to seek clarification early than risk producing irrelevant work."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_COMPLEX_ASSIGNMENTS_CRITERIA_AND_EXPECTATIONS_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a989c552-138c-5a03-b159-a83f2357fa9f', 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a1b6234-7e7d-5b81-b137-45d33f93b14a', 'en', 'assignment brief', 'описание задания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68a9ae06-c98e-5127-aa26-3b38434dcddf', 'en', 'assessment criterion', 'критерий оценивания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c35055a-6038-59c6-a594-bc340ebbbad9', 'en', 'scope', 'объём и границы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d8dc9a5-b92e-5884-81be-18896c78fa1e', 'en', 'deliverable', 'итоговый материал', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e3cd29d-0734-5360-97cf-893e7c0107c7', 'en', 'ambiguous requirement', 'неоднозначное требование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18a15fa4-e6c6-5eb6-8963-f01963b28f85', 'en', 'meet a deadline', 'соблюсти срок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bfd0ba3e-5306-5b01-861b-f123ded1000b', 'en', 'negotiate an extension', 'согласовать продление срока', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a1b6234-7e7d-5b81-b137-45d33f93b14a', 'en', 'assignment brief', 'описание задания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68a9ae06-c98e-5127-aa26-3b38434dcddf', 'en', 'assessment criterion', 'критерий оценивания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c35055a-6038-59c6-a594-bc340ebbbad9', 'en', 'scope', 'объём и границы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d8dc9a5-b92e-5884-81be-18896c78fa1e', 'en', 'deliverable', 'итоговый материал', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e3cd29d-0734-5360-97cf-893e7c0107c7', 'en', 'ambiguous requirement', 'неоднозначное требование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18a15fa4-e6c6-5eb6-8963-f01963b28f85', 'en', 'meet a deadline', 'соблюсти срок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bfd0ba3e-5306-5b01-861b-f123ded1000b', 'en', 'negotiate an extension', 'согласовать продление срока', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a1b6234-7e7d-5b81-b137-45d33f93b14a', 'en', 'assignment brief', 'описание задания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68a9ae06-c98e-5127-aa26-3b38434dcddf', 'en', 'assessment criterion', 'критерий оценивания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c35055a-6038-59c6-a594-bc340ebbbad9', 'en', 'scope', 'объём и границы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d8dc9a5-b92e-5884-81be-18896c78fa1e', 'en', 'deliverable', 'итоговый материал', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e3cd29d-0734-5360-97cf-893e7c0107c7', 'en', 'ambiguous requirement', 'неоднозначное требование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18a15fa4-e6c6-5eb6-8963-f01963b28f85', 'en', 'meet a deadline', 'соблюсти срок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bfd0ba3e-5306-5b01-861b-f123ded1000b', 'en', 'negotiate an extension', 'согласовать продление срока', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, '68909b9d-45f3-5319-a128-9eacd4903d5f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'assignment brief' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, '68909b9d-45f3-5319-a128-9eacd4903d5f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'assessment criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, '68909b9d-45f3-5319-a128-9eacd4903d5f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, '68909b9d-45f3-5319-a128-9eacd4903d5f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'deliverable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, '68909b9d-45f3-5319-a128-9eacd4903d5f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'ambiguous requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, '68909b9d-45f3-5319-a128-9eacd4903d5f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet a deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, '68909b9d-45f3-5319-a128-9eacd4903d5f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate an extension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'dc1d8672-3476-5973-890c-a1f94aa668d4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'assignment brief' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'dc1d8672-3476-5973-890c-a1f94aa668d4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'assessment criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'dc1d8672-3476-5973-890c-a1f94aa668d4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'dc1d8672-3476-5973-890c-a1f94aa668d4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'deliverable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'dc1d8672-3476-5973-890c-a1f94aa668d4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'ambiguous requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'dc1d8672-3476-5973-890c-a1f94aa668d4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet a deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'dc1d8672-3476-5973-890c-a1f94aa668d4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate an extension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'assignment brief' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'assessment criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'deliverable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'ambiguous requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet a deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a989c552-138c-5a03-b159-a83f2357fa9f', id, 'ba4ca06e-0e03-5ed8-abb4-128fcbbdd755', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate an extension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
