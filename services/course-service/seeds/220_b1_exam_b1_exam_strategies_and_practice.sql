-- Track: B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('923ed37c-6676-55c3-97f0-f87c883f5388', 'B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE', 'Экзаменационные стратегии и практика B1', 'Развивайте экзаменационные навыки уровня B1 по теме «Экзаменационные стратегии и практика B1».', '{"en":"B1 Exam Strategies and Practice","ru":"Экзаменационные стратегии и практика B1"}'::jsonb, '{"en":"Develop B1 exam skills for b1 exam strategies and practice.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Экзаменационные стратегии и практика B1»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7277af3b-fd57-5a22-95ed-2574c51cdb1c', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Time and Task Strategy","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac64207a-6ece-504e-9117-c71691e26681', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E01","left":"task instruction","right":"инструкция к заданию"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E02","left":"time management","right":"управление временем"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E03","left":"distractor","right":"отвлекающий вариант"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E04","left":"key word","right":"ключевое слово"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E05","left":"check","right":"проверять"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E06","left":"eliminate","right":"исключать"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E07","left":"evidence","right":"доказательство"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1572d0fd-51be-5e53-b6e7-c3ca88735762', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E08","is_correct":true,"text":"Read the task instruction carefully before deciding how much time each section should receive."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f492b955-1eb4-5676-b55a-7c129ec52009', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Read the task instruction carefully before deciding how much time each section should receive.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Внимательно прочитайте инструкцию к заданию, прежде чем решать, сколько времени выделить каждому разделу.","target_language":"en","word_bank":["Read","the","task","instruction","carefully","before","deciding","how","much","time","each","section","should","receive."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('361f3d36-7470-5d18-95a1-bab41bf3275a', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"task instruction","instruction":"Выберите подходящее слово.","options":["task instruction","key word","eliminate"],"sentence_template":"Read the ___ carefully before deciding how much time each section should receive."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae852c59-0045-5a26-a6a3-e303081e314c', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Read","the","task","instruction","carefully","before","deciding","how","much","time","each","section","should","receive."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["receive.","should","section","each","time","much","how","deciding","before","carefully","instruction","task","the","Read"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b489838-0437-5e30-a53d-025f329e6fbe', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Read the task instruction carefully before deciding how much time each section should receive. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b390517f-3744-517d-84a1-8a71eec9e2ac', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Read the task instruction carefully before deciding how much time each section should receive. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Внимательно прочитайте инструкцию к заданию, прежде чем решать, сколько времени выделить каждому разделу. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae1d91e2-8e78-5931-89ad-bed55c2a9338', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Read the task instruction carefully before deciding how much time each section should receive.","translation":"Внимательно прочитайте инструкцию к заданию, прежде чем решать, сколько времени выделить каждому разделу.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Time and Task Strategy"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7d6cf0c-bd66-51b2-b6e5-5f5b4c93429d', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“task instruction” means directions explaining what to do.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E11","is_correct":true,"text":"directions explaining what to do"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E12","is_correct":false,"text":"using available time effectively"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E13","is_correct":false,"text":"a plausible but incorrect answer"}],"word":"task instruction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('876672a7-9e75-595a-927f-f8455f67668c', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Read the task instruction carefully before deciding how much time each section should receive.","explanation":"The missing exam expression is “task instruction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"task instruction","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E14","is_correct":true},{"audio_text":"distractor","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E15","is_correct":false},{"audio_text":"check","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E16","is_correct":false}],"sentence_template":"Read the ___ carefully before deciding how much time each section should receive."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85d1ebea-3178-593c-8ce4-1628a75fa44f', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"task instruction","explanation":"The sentence requires “task instruction” to produce the correct B1 meaning.","hint_prefix":"tas","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Read the ___ carefully before deciding how much time each section should receive."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('035a7f6a-3583-5884-a113-f017b929400e', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task instruction","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E17","text":"task instruction"},{"audio_text":"time management","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E18","text":"time management"},{"audio_text":"distractor","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E19","text":"distractor"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cfe3288-2c1b-5394-b557-f071fc2f4603', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Time and Task Strategy”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E20","is_correct":true,"text":"Read the task instruction carefully before deciding how much time each section should receive."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('923ed37c-6676-55c3-97f0-f87c883f5388', '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('546988ac-0db2-59ec-8d70-1f93d557d26b', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Integrated Skills Practice","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13409ef2-9e32-53cf-a8ca-10e28697bd73', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E01","left":"task instruction","right":"инструкция к заданию"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E02","left":"time management","right":"управление временем"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E03","left":"distractor","right":"отвлекающий вариант"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E04","left":"key word","right":"ключевое слово"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E05","left":"check","right":"проверять"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E06","left":"eliminate","right":"исключать"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E07","left":"evidence","right":"доказательство"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8eb20f3f-78f3-5315-afdd-707c4591d878', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E08","is_correct":true,"text":"A distractor may repeat a key word from the text while changing the actual meaning."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16808f65-7061-55de-b260-4aae36c01406', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A distractor may repeat a key word from the text while changing the actual meaning.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Отвлекающий вариант может повторять ключевое слово из текста, изменяя при этом фактический смысл.","target_language":"en","word_bank":["A","distractor","may","repeat","a","key","word","from","the","text","while","changing","the","actual","meaning."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('451ced26-fc25-563f-af4d-3d8c56bea706', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"time management","instruction":"Выберите подходящее слово.","options":["time management","check","evidence"],"sentence_template":"A distractor may repeat a key word from the text while changing the actual meaning."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5e80535-8e94-5700-a1d2-5871f102b8c4', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","distractor","may","repeat","a","key","word","from","the","text","while","changing","the","actual","meaning."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["meaning.","actual","the","changing","while","text","the","from","word","key","a","repeat","may","distractor","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('364d033f-b7c1-552a-9c7b-041b02317cb1', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A distractor may repeat a key word from the text while changing the actual meaning. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f99c4a5-1275-5499-b315-df5d121b7b16', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A distractor may repeat a key word from the text while changing the actual meaning. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Отвлекающий вариант может повторять ключевое слово из текста, изменяя при этом фактический смысл. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f338bc7c-88b1-58ea-b66e-f63c1de60b75', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"A distractor may repeat a key word from the text while changing the actual meaning.","translation":"Отвлекающий вариант может повторять ключевое слово из текста, изменяя при этом фактический смысл.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Integrated Skills Practice"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e83fe7df-157c-54fa-b33d-2a8595faefd7', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“time management” means using available time effectively.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E11","is_correct":true,"text":"using available time effectively"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E12","is_correct":false,"text":"a plausible but incorrect answer"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E13","is_correct":false,"text":"a word carrying important meaning"}],"word":"time management"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c88d0e1-503a-59de-b4e6-7d74f3468362', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A distractor may repeat a key word from the text while changing the actual meaning.","explanation":"The missing exam expression is “time management”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"time management","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E14","is_correct":true},{"audio_text":"key word","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E15","is_correct":false},{"audio_text":"eliminate","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E16","is_correct":false}],"sentence_template":"A distractor may repeat a key word from the text while changing the actual meaning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6aea3f35-a95d-5e5d-9a94-03254514d8a1', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"time management","explanation":"The sentence requires “time management” to produce the correct B1 meaning.","hint_prefix":"tim","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A distractor may repeat a key word from the text while changing the actual meaning."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('576366be-a1b7-5817-ad21-a45e8a8ad283', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task instruction","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E17","text":"task instruction"},{"audio_text":"time management","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E18","text":"time management"},{"audio_text":"distractor","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E19","text":"distractor"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45b58537-805b-51b0-8a91-0fe2c3cc1096', '546988ac-0db2-59ec-8d70-1f93d557d26b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Integrated Skills Practice”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E20","is_correct":true,"text":"A distractor may repeat a key word from the text while changing the actual meaning."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('923ed37c-6676-55c3-97f0-f87c883f5388', '546988ac-0db2-59ec-8d70-1f93d557d26b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('669ac228-ae8d-5523-ac46-687c200938ab', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"B1 Mock Review","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57e43d16-1658-540e-bcbd-fc32a1d4f945', '669ac228-ae8d-5523-ac46-687c200938ab', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E01","left":"task instruction","right":"инструкция к заданию"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E02","left":"time management","right":"управление временем"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E03","left":"distractor","right":"отвлекающий вариант"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E04","left":"key word","right":"ключевое слово"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E05","left":"check","right":"проверять"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E06","left":"eliminate","right":"исключать"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E07","left":"evidence","right":"доказательство"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd62a882-0aaa-5442-a042-b7de5649e5ef', '669ac228-ae8d-5523-ac46-687c200938ab', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E08","is_correct":true,"text":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e76f791-d8c3-5fbe-83c9-9e62981be32a', '669ac228-ae8d-5523-ac46-687c200938ab', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем выбрать ответ, исключите неподтверждённые варианты и проверьте, соответствует ли оставшийся выбор доказательствам.","target_language":"en","word_bank":["Before","choosing","an","answer,","eliminate","unsupported","options","and","check","that","the","remaining","choice","matches","the","evidence."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f21e770f-f4eb-5840-a9b4-4a37bcd5989c', '669ac228-ae8d-5523-ac46-687c200938ab', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"distractor","instruction":"Выберите подходящее слово.","options":["distractor","eliminate","task instruction"],"sentence_template":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f642704d-e68f-5cc3-897d-e08bc66f55bd', '669ac228-ae8d-5523-ac46-687c200938ab', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","choosing","an","answer,","eliminate","unsupported","options","and","check","that","the","remaining","choice","matches","the","evidence."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["evidence.","the","matches","choice","remaining","the","that","check","and","options","unsupported","eliminate","answer,","an","choosing","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dcc6e41-eb6d-5c38-a165-f99478bc37af', '669ac228-ae8d-5523-ac46-687c200938ab', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00347bbb-7a92-52a1-9540-68f3b3da3950', '669ac228-ae8d-5523-ac46-687c200938ab', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Прежде чем выбрать ответ, исключите неподтверждённые варианты и проверьте, соответствует ли оставшийся выбор доказательствам. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e9c7839-64a8-5890-b511-b3fc8b7bbb36', '669ac228-ae8d-5523-ac46-687c200938ab', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence.","translation":"Прежде чем выбрать ответ, исключите неподтверждённые варианты и проверьте, соответствует ли оставшийся выбор доказательствам.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"B1 Mock Review"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a62c1f4a-c6a3-5eeb-90e4-c14fcffc7994', '669ac228-ae8d-5523-ac46-687c200938ab', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“distractor” means a plausible but incorrect answer.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E11","is_correct":true,"text":"a plausible but incorrect answer"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E12","is_correct":false,"text":"a word carrying important meaning"},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E13","is_correct":false,"text":"examine for mistakes"}],"word":"distractor"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf8f1885-8641-5524-ae28-bda9f190f1a5', '669ac228-ae8d-5523-ac46-687c200938ab', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence.","explanation":"The missing exam expression is “distractor”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"distractor","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E14","is_correct":true},{"audio_text":"check","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E15","is_correct":false},{"audio_text":"evidence","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E16","is_correct":false}],"sentence_template":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cf692d2-1cb9-5043-8b58-df74c3ecd6c5', '669ac228-ae8d-5523-ac46-687c200938ab', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"distractor","explanation":"The sentence requires “distractor” to produce the correct B1 meaning.","hint_prefix":"dis","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8c6d28d-9a7e-5d56-b193-cbccfac33b55', '669ac228-ae8d-5523-ac46-687c200938ab', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task instruction","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E17","text":"task instruction"},{"audio_text":"time management","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E18","text":"time management"},{"audio_text":"distractor","id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E19","text":"distractor"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('900c610f-fe11-500e-824b-83038a8b844c', '669ac228-ae8d-5523-ac46-687c200938ab', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “B1 Mock Review”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E20","is_correct":true,"text":"Before choosing an answer, eliminate unsupported options and check that the remaining choice matches the evidence."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_B1_EXAM_STRATEGIES_AND_PRACTICE_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('923ed37c-6676-55c3-97f0-f87c883f5388', '669ac228-ae8d-5523-ac46-687c200938ab', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8e1049a-5edc-5bd9-a32e-e3cc9de035e1', 'en', 'task instruction', 'инструкция к заданию', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cb99147-e5c3-5dd4-b325-fbb5f297473a', 'en', 'time management', 'управление временем', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cafb8bb-dd4d-5f25-95e1-aa1fc46aca56', 'en', 'distractor', 'отвлекающий вариант', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('186453f4-eb83-50a9-a8e6-bbca74902724', 'en', 'key word', 'ключевое слово', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0924b87c-15af-59ff-804d-5d50cfeeb710', 'en', 'check', 'проверять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('779c6a9b-4bfd-5373-8d08-ba408568b93b', 'en', 'eliminate', 'исключать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8e1049a-5edc-5bd9-a32e-e3cc9de035e1', 'en', 'task instruction', 'инструкция к заданию', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cb99147-e5c3-5dd4-b325-fbb5f297473a', 'en', 'time management', 'управление временем', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cafb8bb-dd4d-5f25-95e1-aa1fc46aca56', 'en', 'distractor', 'отвлекающий вариант', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('186453f4-eb83-50a9-a8e6-bbca74902724', 'en', 'key word', 'ключевое слово', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0924b87c-15af-59ff-804d-5d50cfeeb710', 'en', 'check', 'проверять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('779c6a9b-4bfd-5373-8d08-ba408568b93b', 'en', 'eliminate', 'исключать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8e1049a-5edc-5bd9-a32e-e3cc9de035e1', 'en', 'task instruction', 'инструкция к заданию', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cb99147-e5c3-5dd4-b325-fbb5f297473a', 'en', 'time management', 'управление временем', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cafb8bb-dd4d-5f25-95e1-aa1fc46aca56', 'en', 'distractor', 'отвлекающий вариант', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('186453f4-eb83-50a9-a8e6-bbca74902724', 'en', 'key word', 'ключевое слово', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0924b87c-15af-59ff-804d-5d50cfeeb710', 'en', 'check', 'проверять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('779c6a9b-4bfd-5373-8d08-ba408568b93b', 'en', 'eliminate', 'исключать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'task instruction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'time management' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'key word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'eliminate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '7277af3b-fd57-5a22-95ed-2574c51cdb1c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '546988ac-0db2-59ec-8d70-1f93d557d26b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'task instruction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '546988ac-0db2-59ec-8d70-1f93d557d26b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'time management' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '546988ac-0db2-59ec-8d70-1f93d557d26b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '546988ac-0db2-59ec-8d70-1f93d557d26b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'key word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '546988ac-0db2-59ec-8d70-1f93d557d26b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '546988ac-0db2-59ec-8d70-1f93d557d26b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'eliminate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '546988ac-0db2-59ec-8d70-1f93d557d26b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '669ac228-ae8d-5523-ac46-687c200938ab', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'task instruction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '669ac228-ae8d-5523-ac46-687c200938ab', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'time management' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '669ac228-ae8d-5523-ac46-687c200938ab', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '669ac228-ae8d-5523-ac46-687c200938ab', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'key word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '669ac228-ae8d-5523-ac46-687c200938ab', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '669ac228-ae8d-5523-ac46-687c200938ab', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'eliminate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '923ed37c-6676-55c3-97f0-f87c883f5388', id, '669ac228-ae8d-5523-ac46-687c200938ab', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
