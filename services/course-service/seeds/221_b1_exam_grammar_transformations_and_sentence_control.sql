-- Track: B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8e94f56d-1512-5da7-adb1-02bd74104fe0', 'B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL', 'Грамматические преобразования и построение предложений', 'Развивайте экзаменационные навыки уровня B1 по теме «Грамматические преобразования и построение предложений».', '{"en":"Grammar Transformations and Sentence Control","ru":"Грамматические преобразования и построение предложений"}'::jsonb, '{"en":"Develop B1 exam skills for grammar transformations and sentence control.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Грамматические преобразования и построение предложений»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('57a3674d-8ee6-5ed0-8679-0413fea7d3f0', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Comparisons and Quantifiers","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa285709-a9b9-51e7-8a42-6cbbba44cd5e', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E01","left":"relative clause","right":"относительное придаточное"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E02","left":"passive voice","right":"страдательный залог"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E03","left":"reported speech","right":"косвенная речь"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E04","left":"despite","right":"несмотря на"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E05","left":"so that","right":"чтобы"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E06","left":"too","right":"слишком"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E07","left":"enough","right":"достаточно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06b2ce86-e2a7-5bf8-8b09-acd30faac4fd', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E08","is_correct":true,"text":"The course, which was designed for working adults, can be completed online."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7cbaf89c-a99f-5bf8-804d-549b8e290908', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The course, which was designed for working adults, can be completed online.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Курс, который был разработан для работающих взрослых, можно пройти онлайн.","target_language":"en","word_bank":["The","course,","which","was","designed","for","working","adults,","can","be","completed","online."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ef92b35-832a-529e-8e27-ecb879a67b56', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"relative clause","instruction":"Выберите подходящее слово.","options":["relative clause","despite","too"],"sentence_template":"The course, which was designed for working adults, can be completed online."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf3c1e6f-e57d-5698-a535-91d1ff3699dd', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","course,","which","was","designed","for","working","adults,","can","be","completed","online."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["online.","completed","be","can","adults,","working","for","designed","was","which","course,","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b012ba81-f1f9-50e3-ace0-ebde3ea2fd50', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The course, which was designed for working adults, can be completed online. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68a9e617-85f1-5f9e-af3e-22c692d2807b', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The course, which was designed for working adults, can be completed online. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Курс, который был разработан для работающих взрослых, можно пройти онлайн. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e8de41a-4b1c-548c-8f56-97c3d708dd52', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"The course, which was designed for working adults, can be completed online.","translation":"Курс, который был разработан для работающих взрослых, можно пройти онлайн.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Comparisons and Quantifiers"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2430886-5f34-591b-a6da-1d9fd105815b', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“relative clause” means a clause describing a noun.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E11","is_correct":true,"text":"a clause describing a noun"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E12","is_correct":false,"text":"a form focusing on an action or result"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E13","is_correct":false,"text":"language reporting another person’s words"}],"word":"relative clause"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3152374a-0bcc-5550-9293-aa8003f0352b', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The course, which was designed for working adults, can be completed online.","explanation":"The missing exam expression is “relative clause”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"relative clause","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E14","is_correct":true},{"audio_text":"reported speech","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E15","is_correct":false},{"audio_text":"so that","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E16","is_correct":false}],"sentence_template":"The course, which was designed for working adults, can be completed online."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd0ee89b-1f20-5331-9d7f-50dd1eca9882', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"relative clause","explanation":"The sentence requires “relative clause” to produce the correct B1 meaning.","hint_prefix":"rel","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The course, which was designed for working adults, can be completed online."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0e85857-e45b-5fcb-8fe9-75e058273ba5', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"relative clause","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E17","text":"relative clause"},{"audio_text":"passive voice","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E18","text":"passive voice"},{"audio_text":"reported speech","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E19","text":"reported speech"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58877c3d-1840-5f0e-88a6-0a88601d1e73', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Comparisons and Quantifiers”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E20","is_correct":true,"text":"The course, which was designed for working adults, can be completed online."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8e94f56d-1512-5da7-adb1-02bd74104fe0', '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('373aec8f-8e63-58aa-affc-57e52af0eae7', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Relative Clauses","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('597139e7-a78b-59e8-b88b-575a93631fa6', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E01","left":"relative clause","right":"относительное придаточное"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E02","left":"passive voice","right":"страдательный залог"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E03","left":"reported speech","right":"косвенная речь"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E04","left":"despite","right":"несмотря на"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E05","left":"so that","right":"чтобы"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E06","left":"too","right":"слишком"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E07","left":"enough","right":"достаточно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('667316bd-9885-54a8-be90-8767c5ea64cb', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E08","is_correct":true,"text":"Despite the delay, the application was reviewed so that a decision could be made that day."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('faf47386-7373-55dd-9841-14356f3968d2', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Despite the delay, the application was reviewed so that a decision could be made that day.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Несмотря на задержку, заявление рассмотрели, чтобы решение можно было принять в тот же день.","target_language":"en","word_bank":["Despite","the","delay,","the","application","was","reviewed","so","that","a","decision","could","be","made","that","day."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f01e91a4-9a52-55d1-a63e-567e5e1e1f5f', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"passive voice","instruction":"Выберите подходящее слово.","options":["passive voice","so that","enough"],"sentence_template":"Despite the delay, the application was reviewed so that a decision could be made that day."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01b2347c-8ea4-5547-9ea1-301be530a2dd', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Despite","the","delay,","the","application","was","reviewed","so","that","a","decision","could","be","made","that","day."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["day.","that","made","be","could","decision","a","that","so","reviewed","was","application","the","delay,","the","Despite"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f30afcfb-64b9-50cb-8553-80922099bb79', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Despite the delay, the application was reviewed so that a decision could be made that day. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9269055d-d715-5ebf-a606-d3fa753eeb9f', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Despite the delay, the application was reviewed so that a decision could be made that day. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Несмотря на задержку, заявление рассмотрели, чтобы решение можно было принять в тот же день. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d40b1f6d-4b66-5077-bd56-e427f2ecc46c', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Despite the delay, the application was reviewed so that a decision could be made that day.","translation":"Несмотря на задержку, заявление рассмотрели, чтобы решение можно было принять в тот же день.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Relative Clauses"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c99e67a-8160-586a-9dcb-716dbef78ba9', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“passive voice” means a form focusing on an action or result.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E11","is_correct":true,"text":"a form focusing on an action or result"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E12","is_correct":false,"text":"language reporting another person’s words"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E13","is_correct":false,"text":"introduces unexpected contrast"}],"word":"passive voice"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3c77f67-725f-50c1-a77d-1c87b86cd35d', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Despite the delay, the application was reviewed so that a decision could be made that day.","explanation":"The missing exam expression is “passive voice”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"passive voice","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E14","is_correct":true},{"audio_text":"despite","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E15","is_correct":false},{"audio_text":"too","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E16","is_correct":false}],"sentence_template":"Despite the delay, the application was reviewed so that a decision could be made that day."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f94ef84b-5bb0-5ec7-9ea6-028fbf674d0b', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"passive voice","explanation":"The sentence requires “passive voice” to produce the correct B1 meaning.","hint_prefix":"pas","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Despite the delay, the application was reviewed so that a decision could be made that day."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e50ad4d-cb86-58d5-b99a-25afea3e4911', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"relative clause","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E17","text":"relative clause"},{"audio_text":"passive voice","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E18","text":"passive voice"},{"audio_text":"reported speech","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E19","text":"reported speech"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3db3b03a-4920-5b56-aa57-8047442a1f2d', '373aec8f-8e63-58aa-affc-57e52af0eae7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Relative Clauses”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E20","is_correct":true,"text":"Despite the delay, the application was reviewed so that a decision could be made that day."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8e94f56d-1512-5da7-adb1-02bd74104fe0', '373aec8f-8e63-58aa-affc-57e52af0eae7', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3ce39f5f-b843-540e-8bff-ae6b81f527eb', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Sentence Transformations","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08121737-510b-5efd-a84e-667d9c575282', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E01","left":"relative clause","right":"относительное придаточное"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E02","left":"passive voice","right":"страдательный залог"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E03","left":"reported speech","right":"косвенная речь"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E04","left":"despite","right":"несмотря на"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E05","left":"so that","right":"чтобы"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E06","left":"too","right":"слишком"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E07","left":"enough","right":"достаточно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e77c4f16-950a-5a6b-bfeb-ff6c967c1042', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E08","is_correct":true,"text":"He explained that the room was too small and that there were not enough chairs for everyone."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6bf8c0d-41bc-5a18-977c-6e47f1882edd', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"He explained that the room was too small and that there were not enough chairs for everyone.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Он объяснил, что комната слишком мала и что стульев недостаточно для всех.","target_language":"en","word_bank":["He","explained","that","the","room","was","too","small","and","that","there","were","not","enough","chairs","for","everyone."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3136d2d2-29e8-5288-ad2b-6cf4ca6dd23e', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reported speech","instruction":"Выберите подходящее слово.","options":["reported speech","too","relative clause"],"sentence_template":"He explained that the room was too small and that there were not enough chairs for everyone."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f759eba7-0bd1-5d2e-b92a-5fbd1c9723c9', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","explained","that","the","room","was","too","small","and","that","there","were","not","enough","chairs","for","everyone."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["everyone.","for","chairs","enough","not","were","there","that","and","small","too","was","room","the","that","explained","He"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c93452d-7491-50c2-8a9e-c7813b69275d', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"He explained that the room was too small and that there were not enough chairs for everyone. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65973a26-23b5-5abc-8f07-1f73a76662e5', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"He explained that the room was too small and that there were not enough chairs for everyone. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Он объяснил, что комната слишком мала и что стульев недостаточно для всех. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87168a5b-fddb-530d-90df-b3bd6b975e04', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"He explained that the room was too small and that there were not enough chairs for everyone.","translation":"Он объяснил, что комната слишком мала и что стульев недостаточно для всех.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Sentence Transformations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a325c7f-8d6d-53af-acf9-c8975b05aaab', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reported speech” means language reporting another person’s words.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E11","is_correct":true,"text":"language reporting another person’s words"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E12","is_correct":false,"text":"introduces unexpected contrast"},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E13","is_correct":false,"text":"introduces purpose"}],"word":"reported speech"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1b6a7cd-0c7f-5a10-85d8-2865c42eb708', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"He explained that the room was too small and that there were not enough chairs for everyone.","explanation":"The missing exam expression is “reported speech”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reported speech","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E14","is_correct":true},{"audio_text":"so that","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E15","is_correct":false},{"audio_text":"enough","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E16","is_correct":false}],"sentence_template":"He explained that the room was too small and that there were not enough chairs for everyone."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e13abac2-d72c-5fd9-85ae-15219f138104', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reported speech","explanation":"The sentence requires “reported speech” to produce the correct B1 meaning.","hint_prefix":"rep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"He explained that the room was too small and that there were not enough chairs for everyone."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22fb6fca-1a87-531a-9861-494a0b8cf1a8', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"relative clause","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E17","text":"relative clause"},{"audio_text":"passive voice","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E18","text":"passive voice"},{"audio_text":"reported speech","id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E19","text":"reported speech"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8fc3a429-1afc-5932-8378-133812b65e90', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Sentence Transformations”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E20","is_correct":true,"text":"He explained that the room was too small and that there were not enough chairs for everyone."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_GRAMMAR_TRANSFORMATIONS_AND_SENTENCE_CONTROL_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8e94f56d-1512-5da7-adb1-02bd74104fe0', '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fd84d32-26c0-55a9-995a-968eb1aff680', 'en', 'relative clause', 'относительное придаточное', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7b3bf7a-3b91-5640-9f7a-8d78fe0e73b7', 'en', 'passive voice', 'страдательный залог', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af5f9911-2908-5d9f-b593-aa03f3ed7709', 'en', 'reported speech', 'косвенная речь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ede4d8ad-c028-58e5-8165-9e63df10ad29', 'en', 'despite', 'несмотря на', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('854ede1c-ebcc-5f0d-8e3d-3371e0b1f4ce', 'en', 'so that', 'чтобы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('98b154c9-c979-5678-ac2d-c96223ab3718', 'en', 'too', 'слишком', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c2c5c23-6c89-5e03-9c90-f03c622285d0', 'en', 'enough', 'достаточно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fd84d32-26c0-55a9-995a-968eb1aff680', 'en', 'relative clause', 'относительное придаточное', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7b3bf7a-3b91-5640-9f7a-8d78fe0e73b7', 'en', 'passive voice', 'страдательный залог', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af5f9911-2908-5d9f-b593-aa03f3ed7709', 'en', 'reported speech', 'косвенная речь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ede4d8ad-c028-58e5-8165-9e63df10ad29', 'en', 'despite', 'несмотря на', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('854ede1c-ebcc-5f0d-8e3d-3371e0b1f4ce', 'en', 'so that', 'чтобы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('98b154c9-c979-5678-ac2d-c96223ab3718', 'en', 'too', 'слишком', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c2c5c23-6c89-5e03-9c90-f03c622285d0', 'en', 'enough', 'достаточно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fd84d32-26c0-55a9-995a-968eb1aff680', 'en', 'relative clause', 'относительное придаточное', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7b3bf7a-3b91-5640-9f7a-8d78fe0e73b7', 'en', 'passive voice', 'страдательный залог', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af5f9911-2908-5d9f-b593-aa03f3ed7709', 'en', 'reported speech', 'косвенная речь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ede4d8ad-c028-58e5-8165-9e63df10ad29', 'en', 'despite', 'несмотря на', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('854ede1c-ebcc-5f0d-8e3d-3371e0b1f4ce', 'en', 'so that', 'чтобы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('98b154c9-c979-5678-ac2d-c96223ab3718', 'en', 'too', 'слишком', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c2c5c23-6c89-5e03-9c90-f03c622285d0', 'en', 'enough', 'достаточно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'relative clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'passive voice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'reported speech' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'despite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'so that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'too' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '57a3674d-8ee6-5ed0-8679-0413fea7d3f0', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'enough' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '373aec8f-8e63-58aa-affc-57e52af0eae7', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'relative clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '373aec8f-8e63-58aa-affc-57e52af0eae7', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'passive voice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '373aec8f-8e63-58aa-affc-57e52af0eae7', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reported speech' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '373aec8f-8e63-58aa-affc-57e52af0eae7', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'despite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '373aec8f-8e63-58aa-affc-57e52af0eae7', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'so that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '373aec8f-8e63-58aa-affc-57e52af0eae7', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'too' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '373aec8f-8e63-58aa-affc-57e52af0eae7', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'enough' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'relative clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'passive voice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reported speech' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'despite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'so that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'too' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8e94f56d-1512-5da7-adb1-02bd74104fe0', id, '3ce39f5f-b843-540e-8bff-ae6b81f527eb', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'enough' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
