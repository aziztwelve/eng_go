-- Track: C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3d55f458-686f-5ed2-bf49-0f76992c2398', 'C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS', 'Чтение: подтекст, позиция автора и предвзятость', 'Освойте экзаменационные навыки C1 по теме «Чтение: подтекст, позиция автора и предвзятость»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Reading: Implication, Stance and Bias","ru":"Чтение: подтекст, позиция автора и предвзятость"}'::jsonb, '{"en":"Master C1 exam skills for reading: implication, stance and bias by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Чтение: подтекст, позиция автора и предвзятость»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ea0208cf-91d0-5f75-81ff-6413368595b2', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Distinguishing Claim from Implication","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('203ce1c6-d749-502c-868f-dab72b814df2', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D01","left":"implicit claim","right":"подразумеваемое утверждение"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D02","left":"authorial stance","right":"позиция автора"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D03","left":"evaluative language","right":"оценочная лексика"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D04","left":"qualified assertion","right":"оговорённое утверждение"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D05","left":"rhetorical framing","right":"риторическое представление"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D06","left":"source credibility","right":"надёжность источника"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D07","left":"confirmation bias","right":"предвзятость подтверждения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cbecb38-41ae-5550-9fb8-8cba2cbc45cd', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D08","is_correct":true,"text":"The evaluative language makes the implicit claim clear, although the conclusion is never stated directly."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f78116e-6040-5d9f-9e3d-f9e31d77b1b6', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The evaluative language makes the implicit claim clear, although the conclusion is never stated directly.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оценочная лексика делает подразумеваемое утверждение ясным, хотя вывод прямо не сформулирован.","target_language":"en","word_bank":["The","evaluative","language","makes","the","implicit","claim","clear",",","although","the","conclusion","is","never","stated","directly","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63bf148b-3d4d-553e-b89b-673bc8b5a092', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"implicit claim","instruction":"Выберите подходящее слово.","options":["implicit claim","qualified assertion","source credibility"],"sentence_template":"The evaluative language makes the ___ clear, although the conclusion is never stated directly."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4c2dab3-4a13-5a01-b41a-504f56d40ac4', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","evaluative","language","makes","the","implicit","claim","clear",",","although","the","conclusion","is","never","stated","directly","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","directly","stated","never","is","conclusion","the","although",",","clear","claim","implicit","the","makes","language","evaluative","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f69fa48-376b-59f2-8ab9-ced7194b6395', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The evaluative language makes the implicit claim clear, although the conclusion is never stated directly. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a571364-871d-5d0b-99d2-30697e87f591', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The evaluative language makes the implicit claim clear, although the conclusion is never stated directly. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Оценочная лексика делает подразумеваемое утверждение ясным, хотя вывод прямо не сформулирован. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5169c0be-2a9b-550b-a1c2-b78aa25e430e', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The evaluative language makes the implicit claim clear, although the conclusion is never stated directly.","translation":"Оценочная лексика делает подразумеваемое утверждение ясным, хотя вывод прямо не сформулирован.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Distinguishing Claim from Implication"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95dec930-6448-51c2-beff-be411802f1b5', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“implicit claim” means a proposition communicated indirectly.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D11","is_correct":true,"text":"a proposition communicated indirectly"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D12","is_correct":false,"text":"the writer’s attitude toward the subject"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D13","is_correct":false,"text":"wording that expresses judgement"}],"word":"implicit claim"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a48f125f-e6d4-59b8-b0fe-ae5de4dd6ebc', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The evaluative language makes the implicit claim clear, although the conclusion is never stated directly.","explanation":"The missing expression is “implicit claim”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"implicit claim","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D14","is_correct":true},{"audio_text":"evaluative language","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D15","is_correct":false},{"audio_text":"rhetorical framing","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D16","is_correct":false}],"sentence_template":"The evaluative language makes the ___ clear, although the conclusion is never stated directly."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7beffa2-7594-56a7-94a6-b0093afcd234', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"implicit claim","explanation":"The complete answer uses “implicit claim” precisely.","hint_prefix":"impl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The evaluative language makes the ___ clear, although the conclusion is never stated directly."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56089f33-5927-53c8-bb08-3f68a2096e94', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"implicit claim","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D17","text":"implicit claim"},{"audio_text":"authorial stance","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D18","text":"authorial stance"},{"audio_text":"evaluative language","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D19","text":"evaluative language"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79102707-9f0d-589a-ab50-dd24d60d4ae3', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Distinguishing Claim from Implication” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D20","is_correct":true,"text":"The evaluative language makes the implicit claim clear, although the conclusion is never stated directly."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d55f458-686f-5ed2-bf49-0f76992c2398', 'ea0208cf-91d0-5f75-81ff-6413368595b2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4e5501a1-88b8-5946-99e3-93d312bfdb66', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Tracing Authorial Stance","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7837ad3c-e052-5498-87ce-80a3f143b8f0', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D01","left":"implicit claim","right":"подразумеваемое утверждение"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D02","left":"authorial stance","right":"позиция автора"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D03","left":"evaluative language","right":"оценочная лексика"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D04","left":"qualified assertion","right":"оговорённое утверждение"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D05","left":"rhetorical framing","right":"риторическое представление"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D06","left":"source credibility","right":"надёжность источника"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D07","left":"confirmation bias","right":"предвзятость подтверждения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('123672ab-09c7-53a6-b774-acecf44bcc25', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D08","is_correct":true,"text":"The authorial stance is broadly supportive but remains qualified by references to methodological uncertainty."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38531a15-8ee0-59a9-8fe6-856f1ab275d8', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The authorial stance is broadly supportive but remains qualified by references to methodological uncertainty.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Позиция автора в целом положительная, но ограничена ссылками на методологическую неопределённость.","target_language":"en","word_bank":["The","authorial","stance","is","broadly","supportive","but","remains","qualified","by","references","to","methodological","uncertainty","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ea4e145-13f0-5211-a171-ae654c7f094d', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"authorial stance","instruction":"Выберите подходящее слово.","options":["authorial stance","rhetorical framing","confirmation bias"],"sentence_template":"The ___ is broadly supportive but remains qualified by references to methodological uncertainty."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1492986-e105-5dac-98ea-17911e64b8f8', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","authorial","stance","is","broadly","supportive","but","remains","qualified","by","references","to","methodological","uncertainty","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","uncertainty","methodological","to","references","by","qualified","remains","but","supportive","broadly","is","stance","authorial","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49ed4963-fdde-5d4d-83de-17793dd58832', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The authorial stance is broadly supportive but remains qualified by references to methodological uncertainty. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31767ab3-559a-57cc-85fc-f202dcec5eed', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The authorial stance is broadly supportive but remains qualified by references to methodological uncertainty. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Позиция автора в целом положительная, но ограничена ссылками на методологическую неопределённость. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2939dc8e-9413-5d27-a138-1908a5b43fa7', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The authorial stance is broadly supportive but remains qualified by references to methodological uncertainty.","translation":"Позиция автора в целом положительная, но ограничена ссылками на методологическую неопределённость.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Tracing Authorial Stance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95e87835-6d11-59aa-b379-038fa3a3b0bf', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“authorial stance” means the writer’s attitude toward the subject.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D11","is_correct":true,"text":"the writer’s attitude toward the subject"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D12","is_correct":false,"text":"wording that expresses judgement"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D13","is_correct":false,"text":"a claim limited by cautious language"}],"word":"authorial stance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ba204f9-244f-504f-a6bf-5cb2cab067b6', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The authorial stance is broadly supportive but remains qualified by references to methodological uncertainty.","explanation":"The missing expression is “authorial stance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"authorial stance","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D14","is_correct":true},{"audio_text":"qualified assertion","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D15","is_correct":false},{"audio_text":"source credibility","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D16","is_correct":false}],"sentence_template":"The ___ is broadly supportive but remains qualified by references to methodological uncertainty."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27ac5e0e-931a-55ab-a018-0262aac55535', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"authorial stance","explanation":"The complete answer uses “authorial stance” precisely.","hint_prefix":"auth","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is broadly supportive but remains qualified by references to methodological uncertainty."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d510b89-ed62-5787-b34a-1d060ee5187c', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"implicit claim","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D17","text":"implicit claim"},{"audio_text":"authorial stance","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D18","text":"authorial stance"},{"audio_text":"evaluative language","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D19","text":"evaluative language"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d4eb7ce-2602-5c89-a2b3-6946e8933973', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Tracing Authorial Stance” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D20","is_correct":true,"text":"The authorial stance is broadly supportive but remains qualified by references to methodological uncertainty."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d55f458-686f-5ed2-bf49-0f76992c2398', '4e5501a1-88b8-5946-99e3-93d312bfdb66', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('14d61eb1-ade6-593e-bee0-aac72731e25e', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Evaluating Bias and Reliability","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43c14e05-7a2d-592d-b98a-d40f5cdb6740', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D01","left":"implicit claim","right":"подразумеваемое утверждение"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D02","left":"authorial stance","right":"позиция автора"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D03","left":"evaluative language","right":"оценочная лексика"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D04","left":"qualified assertion","right":"оговорённое утверждение"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D05","left":"rhetorical framing","right":"риторическое представление"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D06","left":"source credibility","right":"надёжность источника"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D07","left":"confirmation bias","right":"предвзятость подтверждения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ce07d78-9b15-503a-a352-d78e19a9ef2e', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D08","is_correct":true,"text":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is evaluative language."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('878548fa-b05b-5ce0-931e-e8133a353c88', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is evaluative language.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Источник кажется надёжным, хотя его риторическое представление может выявлять предвзятость подтверждения при отборе доказательств. Соответствующее понятие уровня C1 — «оценочная лексика».","target_language":"en","word_bank":["The","source","appears","credible",",","although","its","rhetorical","framing","may","reveal","confirmation","bias","in","the","selection","of","evidence",".","The","relevant","C","1","concept","is","evaluative","language","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7e8492f-184d-545b-a407-e37335512454', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"evaluative language","instruction":"Выберите подходящее слово.","options":["evaluative language","source credibility","implicit claim"],"sentence_template":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3546085-9bcb-54c6-aeb0-13f80c664596', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","source","appears","credible",",","although","its","rhetorical","framing","may","reveal","confirmation","bias","in","the","selection","of","evidence",".","The","relevant","C","1","concept","is","evaluative","language","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","language","evaluative","is","concept","1","C","relevant","The",".","evidence","of","selection","the","in","bias","confirmation","reveal","may","framing","rhetorical","its","although",",","credible","appears","source","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ac648eb-b37c-50b8-be95-072bd86ed057', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is evaluative language. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d820911-094a-5d50-ae20-e0ebbb388938', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is evaluative language. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Источник кажется надёжным, хотя его риторическое представление может выявлять предвзятость подтверждения при отборе доказательств. Соответствующее понятие уровня C1 — «оценочная лексика». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6ecd29c-23fc-5c98-8e2b-7cb8cb1f3a3d', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is evaluative language.","translation":"Источник кажется надёжным, хотя его риторическое представление может выявлять предвзятость подтверждения при отборе доказательств. Соответствующее понятие уровня C1 — «оценочная лексика».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Evaluating Bias and Reliability"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a49ea0b-a685-5149-8ba1-5db411470557', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“evaluative language” means wording that expresses judgement.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D11","is_correct":true,"text":"wording that expresses judgement"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D12","is_correct":false,"text":"a claim limited by cautious language"},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D13","is_correct":false,"text":"selective presentation that shapes interpretation"}],"word":"evaluative language"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0fcec8b-327b-581e-b33b-10460aee18b1', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is evaluative language.","explanation":"The missing expression is “evaluative language”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"evaluative language","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D14","is_correct":true},{"audio_text":"rhetorical framing","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D15","is_correct":false},{"audio_text":"confirmation bias","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D16","is_correct":false}],"sentence_template":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0acaa814-2fe8-5f28-bae6-6ff7d6b675de', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"evaluative language","explanation":"The complete answer uses “evaluative language” precisely.","hint_prefix":"eval","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07714770-bd6f-5eea-82e5-52f91d51381f', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"implicit claim","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D17","text":"implicit claim"},{"audio_text":"authorial stance","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D18","text":"authorial stance"},{"audio_text":"evaluative language","id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D19","text":"evaluative language"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99bea494-0bbf-543f-9afd-517d9d53e600', '14d61eb1-ade6-593e-bee0-aac72731e25e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Evaluating Bias and Reliability” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D20","is_correct":true,"text":"The source appears credible, although its rhetorical framing may reveal confirmation bias in the selection of evidence. The relevant C1 concept is evaluative language."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_READING_IMPLICATION_STANCE_AND_BIAS_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d55f458-686f-5ed2-bf49-0f76992c2398', '14d61eb1-ade6-593e-bee0-aac72731e25e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('93bb2aab-d36e-572c-aee2-62e9eeb9b3e6', 'en', 'implicit claim', 'подразумеваемое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('20c07627-0795-58d8-9292-393fce9f1b96', 'en', 'authorial stance', 'позиция автора', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dfd0d8-6629-5086-8f87-ac3a727a90c7', 'en', 'evaluative language', 'оценочная лексика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18b20a87-7534-54e0-b053-061dc02edd1d', 'en', 'qualified assertion', 'оговорённое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95d521cb-9a66-5e8c-b485-127ebf3caa51', 'en', 'rhetorical framing', 'риторическое представление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394531b-1c2a-5c20-8b09-95a71063c963', 'en', 'source credibility', 'надёжность источника', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e1cc124-56c0-547c-b0cf-f02d31ad91cf', 'en', 'confirmation bias', 'предвзятость подтверждения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('93bb2aab-d36e-572c-aee2-62e9eeb9b3e6', 'en', 'implicit claim', 'подразумеваемое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('20c07627-0795-58d8-9292-393fce9f1b96', 'en', 'authorial stance', 'позиция автора', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dfd0d8-6629-5086-8f87-ac3a727a90c7', 'en', 'evaluative language', 'оценочная лексика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18b20a87-7534-54e0-b053-061dc02edd1d', 'en', 'qualified assertion', 'оговорённое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95d521cb-9a66-5e8c-b485-127ebf3caa51', 'en', 'rhetorical framing', 'риторическое представление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394531b-1c2a-5c20-8b09-95a71063c963', 'en', 'source credibility', 'надёжность источника', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e1cc124-56c0-547c-b0cf-f02d31ad91cf', 'en', 'confirmation bias', 'предвзятость подтверждения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('93bb2aab-d36e-572c-aee2-62e9eeb9b3e6', 'en', 'implicit claim', 'подразумеваемое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('20c07627-0795-58d8-9292-393fce9f1b96', 'en', 'authorial stance', 'позиция автора', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dfd0d8-6629-5086-8f87-ac3a727a90c7', 'en', 'evaluative language', 'оценочная лексика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18b20a87-7534-54e0-b053-061dc02edd1d', 'en', 'qualified assertion', 'оговорённое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95d521cb-9a66-5e8c-b485-127ebf3caa51', 'en', 'rhetorical framing', 'риторическое представление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394531b-1c2a-5c20-8b09-95a71063c963', 'en', 'source credibility', 'надёжность источника', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e1cc124-56c0-547c-b0cf-f02d31ad91cf', 'en', 'confirmation bias', 'предвзятость подтверждения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, 'ea0208cf-91d0-5f75-81ff-6413368595b2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, 'ea0208cf-91d0-5f75-81ff-6413368595b2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, 'ea0208cf-91d0-5f75-81ff-6413368595b2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluative language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, 'ea0208cf-91d0-5f75-81ff-6413368595b2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified assertion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, 'ea0208cf-91d0-5f75-81ff-6413368595b2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, 'ea0208cf-91d0-5f75-81ff-6413368595b2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'source credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, 'ea0208cf-91d0-5f75-81ff-6413368595b2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirmation bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '4e5501a1-88b8-5946-99e3-93d312bfdb66', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '4e5501a1-88b8-5946-99e3-93d312bfdb66', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '4e5501a1-88b8-5946-99e3-93d312bfdb66', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluative language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '4e5501a1-88b8-5946-99e3-93d312bfdb66', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified assertion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '4e5501a1-88b8-5946-99e3-93d312bfdb66', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '4e5501a1-88b8-5946-99e3-93d312bfdb66', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'source credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '4e5501a1-88b8-5946-99e3-93d312bfdb66', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirmation bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '14d61eb1-ade6-593e-bee0-aac72731e25e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '14d61eb1-ade6-593e-bee0-aac72731e25e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '14d61eb1-ade6-593e-bee0-aac72731e25e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluative language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '14d61eb1-ade6-593e-bee0-aac72731e25e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified assertion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '14d61eb1-ade6-593e-bee0-aac72731e25e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rhetorical framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '14d61eb1-ade6-593e-bee0-aac72731e25e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'source credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d55f458-686f-5ed2-bf49-0f76992c2398', id, '14d61eb1-ade6-593e-bee0-aac72731e25e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirmation bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
