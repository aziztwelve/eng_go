-- Track: B1_EXAM_NARRATIVE_AND_PERFECT_TENSES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('98e91080-8369-5d35-b636-4fa1a73db791', 'B1_EXAM_NARRATIVE_AND_PERFECT_TENSES', 'Повествовательные времена и перфектные формы', 'Развивайте экзаменационные навыки уровня B1 по теме «Повествовательные времена и перфектные формы».', '{"en":"Narrative and Perfect Tenses","ru":"Повествовательные времена и перфектные формы"}'::jsonb, '{"en":"Develop B1 exam skills for narrative and perfect tenses.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Повествовательные времена и перфектные формы»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('35de5936-5021-5573-a4a5-4db2ec807a5e', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Past Tenses in Context","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc3eaad6-3fd1-5441-80a8-53e7212c65e9', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E01","left":"past perfect","right":"прошедшее совершённое"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E02","left":"past continuous","right":"прошедшее длительное"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E03","left":"present perfect","right":"настоящее совершённое"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E04","left":"already","right":"уже"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E05","left":"yet","right":"ещё"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E06","left":"while","right":"в то время как"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E07","left":"by the time","right":"к тому времени как"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce1434bc-c3f0-5a7e-8677-822e47a7fe65', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E08","is_correct":true,"text":"By the time the guide arrived, the visitors had already waited outside for nearly an hour."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e08e3071-90aa-50ac-82ec-80ce521ffd53', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"By the time the guide arrived, the visitors had already waited outside for nearly an hour.","instruction":"Соберите перевод.","source_language":"ru","source_text":"К тому времени, как прибыл гид, посетители уже ждали снаружи почти час.","target_language":"en","word_bank":["By","the","time","the","guide","arrived,","the","visitors","had","already","waited","outside","for","nearly","an","hour."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('082e6435-39be-5e73-9135-357d3761f9b8', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"past perfect","instruction":"Выберите подходящее слово.","options":["past perfect","already","while"],"sentence_template":"By the time the guide arrived, the visitors had already waited outside for nearly an hour."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2187b563-784d-5362-8647-dc0a0e3f1be7', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["By","the","time","the","guide","arrived,","the","visitors","had","already","waited","outside","for","nearly","an","hour."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["hour.","an","nearly","for","outside","waited","already","had","visitors","the","arrived,","guide","the","time","the","By"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('061c60b7-7db9-5294-88fc-9bafaa8081eb', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"By the time the guide arrived, the visitors had already waited outside for nearly an hour. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c014d54-fb6d-5d65-8df9-ec5c20ab29a5', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"By the time the guide arrived, the visitors had already waited outside for nearly an hour. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"К тому времени, как прибыл гид, посетители уже ждали снаружи почти час. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39eb385d-d38f-5248-91ce-c802ce95f427', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"By the time the guide arrived, the visitors had already waited outside for nearly an hour.","translation":"К тому времени, как прибыл гид, посетители уже ждали снаружи почти час.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Past Tenses in Context"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4e27868-3695-5ebb-8d8c-04e1e8824f71', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“past perfect” means a tense for an earlier past action.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E11","is_correct":true,"text":"a tense for an earlier past action"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E12","is_correct":false,"text":"a tense for an action in progress in the past"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E13","is_correct":false,"text":"a tense linking past events to the present"}],"word":"past perfect"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2ed199b-9cc2-5233-bf0b-bf2380b0f9f0', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"By the time the guide arrived, the visitors had already waited outside for nearly an hour.","explanation":"The missing exam expression is “past perfect”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"past perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E14","is_correct":true},{"audio_text":"present perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E15","is_correct":false},{"audio_text":"yet","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E16","is_correct":false}],"sentence_template":"By the time the guide arrived, the visitors had already waited outside for nearly an hour."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dd1d946-1fa5-57b3-bf3e-9a9112878c17', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"past perfect","explanation":"The sentence requires “past perfect” to produce the correct B1 meaning.","hint_prefix":"pas","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"By the time the guide arrived, the visitors had already waited outside for nearly an hour."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fd37ef4-46a2-5c0e-9634-6e8e43bca80c', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"past perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E17","text":"past perfect"},{"audio_text":"past continuous","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E18","text":"past continuous"},{"audio_text":"present perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E19","text":"present perfect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05bd25df-b989-5c44-a4a1-8a194061e55d', '35de5936-5021-5573-a4a5-4db2ec807a5e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Past Tenses in Context”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E20","is_correct":true,"text":"By the time the guide arrived, the visitors had already waited outside for nearly an hour."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('98e91080-8369-5d35-b636-4fa1a73db791', '35de5936-5021-5573-a4a5-4db2ec807a5e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fa331e30-5f10-5d87-a153-069b9fadefe7', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Present Perfect","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bd6b1f3-4c0d-5284-b56b-0ca4d266d9f5', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E01","left":"past perfect","right":"прошедшее совершённое"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E02","left":"past continuous","right":"прошедшее длительное"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E03","left":"present perfect","right":"настоящее совершённое"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E04","left":"already","right":"уже"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E05","left":"yet","right":"ещё"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E06","left":"while","right":"в то время как"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E07","left":"by the time","right":"к тому времени как"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('948458ef-8338-5a4a-b994-15bfcdd2a57b', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E08","is_correct":true,"text":"While I was checking the booking, I noticed that someone had entered the wrong date."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1644a1ea-6f34-56db-bed5-601972a866bb', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"While I was checking the booking, I noticed that someone had entered the wrong date.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пока я проверял бронирование, я заметил, что кто-то ввёл неправильную дату.","target_language":"en","word_bank":["While","I","was","checking","the","booking,","I","noticed","that","someone","had","entered","the","wrong","date."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e171dd1b-360e-5ecd-a55e-76cef41b0c77', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"past continuous","instruction":"Выберите подходящее слово.","options":["past continuous","yet","by the time"],"sentence_template":"While I was checking the booking, I noticed that someone had entered the wrong date."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27b2b9ae-c8e7-59cc-b659-6b68c7b4c9cf', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["While","I","was","checking","the","booking,","I","noticed","that","someone","had","entered","the","wrong","date."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["date.","wrong","the","entered","had","someone","that","noticed","I","booking,","the","checking","was","I","While"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7e28ecd-c8f3-5d05-b8dc-ac129238bfb6', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"While I was checking the booking, I noticed that someone had entered the wrong date. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ed26acc-37b3-5909-b3bf-e648c1212745', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"While I was checking the booking, I noticed that someone had entered the wrong date. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Пока я проверял бронирование, я заметил, что кто-то ввёл неправильную дату. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e53b6a0-36b8-55ab-a974-67aebd29798f', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"While I was checking the booking, I noticed that someone had entered the wrong date.","translation":"Пока я проверял бронирование, я заметил, что кто-то ввёл неправильную дату.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Present Perfect"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eacc7cb9-0d67-52df-9829-c8768dc29839', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“past continuous” means a tense for an action in progress in the past.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E11","is_correct":true,"text":"a tense for an action in progress in the past"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E12","is_correct":false,"text":"a tense linking past events to the present"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E13","is_correct":false,"text":"before now or an expected time"}],"word":"past continuous"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a4e4a13-e4ad-5e0f-86f9-7dc651e4d2c5', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"While I was checking the booking, I noticed that someone had entered the wrong date.","explanation":"The missing exam expression is “past continuous”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"past continuous","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E14","is_correct":true},{"audio_text":"already","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E15","is_correct":false},{"audio_text":"while","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E16","is_correct":false}],"sentence_template":"While I was checking the booking, I noticed that someone had entered the wrong date."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4ef33cd-33cd-582e-8ebf-256a6317d3db', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"past continuous","explanation":"The sentence requires “past continuous” to produce the correct B1 meaning.","hint_prefix":"pas","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"While I was checking the booking, I noticed that someone had entered the wrong date."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc46874b-0315-55e5-ae5d-95a2b39f4a2c', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"past perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E17","text":"past perfect"},{"audio_text":"past continuous","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E18","text":"past continuous"},{"audio_text":"present perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E19","text":"present perfect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d888cbe-c649-566b-a12c-edd4c2ac6743', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Present Perfect”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E20","is_correct":true,"text":"While I was checking the booking, I noticed that someone had entered the wrong date."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('98e91080-8369-5d35-b636-4fa1a73db791', 'fa331e30-5f10-5d87-a153-069b9fadefe7', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('31b38837-1850-5528-ab86-626d5139351c', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Tense Review","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05a589f4-d252-5d7e-9366-c59016730187', '31b38837-1850-5528-ab86-626d5139351c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E01","left":"past perfect","right":"прошедшее совершённое"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E02","left":"past continuous","right":"прошедшее длительное"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E03","left":"present perfect","right":"настоящее совершённое"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E04","left":"already","right":"уже"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E05","left":"yet","right":"ещё"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E06","left":"while","right":"в то время как"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E07","left":"by the time","right":"к тому времени как"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8456511-98a6-539b-b9ab-4e3c4e71ff2d', '31b38837-1850-5528-ab86-626d5139351c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E08","is_correct":true,"text":"She has not received the final result yet, although she completed the interview last week."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3c1bab6-f334-5b5e-8726-d7d841c1df5d', '31b38837-1850-5528-ab86-626d5139351c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"She has not received the final result yet, although she completed the interview last week.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Она ещё не получила окончательный результат, хотя прошла собеседование на прошлой неделе.","target_language":"en","word_bank":["She","has","not","received","the","final","result","yet,","although","she","completed","the","interview","last","week."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3098f481-857e-551c-be75-fec12df9bcdb', '31b38837-1850-5528-ab86-626d5139351c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"present perfect","instruction":"Выберите подходящее слово.","options":["present perfect","while","past perfect"],"sentence_template":"She has not received the final result yet, although she completed the interview last week."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('145087ec-480e-57bb-ad37-542cd82402d0', '31b38837-1850-5528-ab86-626d5139351c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","not","received","the","final","result","yet,","although","she","completed","the","interview","last","week."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["week.","last","interview","the","completed","she","although","yet,","result","final","the","received","not","has","She"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8cc9468-655a-5f5d-9a87-810b17d1a70b', '31b38837-1850-5528-ab86-626d5139351c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"She has not received the final result yet, although she completed the interview last week. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5eaac175-7f31-5be9-a7b7-8bdf52887d7b', '31b38837-1850-5528-ab86-626d5139351c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"She has not received the final result yet, although she completed the interview last week. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Она ещё не получила окончательный результат, хотя прошла собеседование на прошлой неделе. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e43c5a20-4847-58ec-b37e-15b99158b9ba', '31b38837-1850-5528-ab86-626d5139351c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"She has not received the final result yet, although she completed the interview last week.","translation":"Она ещё не получила окончательный результат, хотя прошла собеседование на прошлой неделе.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Tense Review"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86eaff93-5ddf-58a5-b56e-6ce37a55ff83', '31b38837-1850-5528-ab86-626d5139351c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“present perfect” means a tense linking past events to the present.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E11","is_correct":true,"text":"a tense linking past events to the present"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E12","is_correct":false,"text":"before now or an expected time"},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E13","is_correct":false,"text":"until now in questions or negatives"}],"word":"present perfect"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb41f061-c753-59f8-a64e-1d2d389c2ad9', '31b38837-1850-5528-ab86-626d5139351c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She has not received the final result yet, although she completed the interview last week.","explanation":"The missing exam expression is “present perfect”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"present perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E14","is_correct":true},{"audio_text":"yet","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E15","is_correct":false},{"audio_text":"by the time","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E16","is_correct":false}],"sentence_template":"She has not received the final result yet, although she completed the interview last week."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b79fc46d-d619-591c-98ea-53ed25ad271b', '31b38837-1850-5528-ab86-626d5139351c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"present perfect","explanation":"The sentence requires “present perfect” to produce the correct B1 meaning.","hint_prefix":"pre","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has not received the final result yet, although she completed the interview last week."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95d54ddf-738d-5c43-bb5d-ba6308fabde4', '31b38837-1850-5528-ab86-626d5139351c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"past perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E17","text":"past perfect"},{"audio_text":"past continuous","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E18","text":"past continuous"},{"audio_text":"present perfect","id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E19","text":"present perfect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b9f4e44-06d6-5545-b0e2-74debf74dfe4', '31b38837-1850-5528-ab86-626d5139351c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Tense Review”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E20","is_correct":true,"text":"She has not received the final result yet, although she completed the interview last week."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_NARRATIVE_AND_PERFECT_TENSES_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('98e91080-8369-5d35-b636-4fa1a73db791', '31b38837-1850-5528-ab86-626d5139351c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb40f7b6-48fa-5c92-bb04-429d8a838144', 'en', 'past perfect', 'прошедшее совершённое', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6fffeba-3511-5661-9ea0-ec736454e4ce', 'en', 'past continuous', 'прошедшее длительное', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79a2f2f2-bb3d-5be3-a399-e2d2606a97c3', 'en', 'present perfect', 'настоящее совершённое', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5851e2ff-5b38-5a83-9910-bce95b245ef4', 'en', 'already', 'уже', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('160fc6e0-3607-5e9c-a7e3-1d0ddf0a6cdd', 'en', 'yet', 'ещё', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af4f0604-e764-554d-bef7-692688347815', 'en', 'while', 'в то время как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1296a37-f9a8-5724-84e2-3ae6f8c2a0e3', 'en', 'by the time', 'к тому времени как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb40f7b6-48fa-5c92-bb04-429d8a838144', 'en', 'past perfect', 'прошедшее совершённое', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6fffeba-3511-5661-9ea0-ec736454e4ce', 'en', 'past continuous', 'прошедшее длительное', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79a2f2f2-bb3d-5be3-a399-e2d2606a97c3', 'en', 'present perfect', 'настоящее совершённое', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5851e2ff-5b38-5a83-9910-bce95b245ef4', 'en', 'already', 'уже', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('160fc6e0-3607-5e9c-a7e3-1d0ddf0a6cdd', 'en', 'yet', 'ещё', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af4f0604-e764-554d-bef7-692688347815', 'en', 'while', 'в то время как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1296a37-f9a8-5724-84e2-3ae6f8c2a0e3', 'en', 'by the time', 'к тому времени как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb40f7b6-48fa-5c92-bb04-429d8a838144', 'en', 'past perfect', 'прошедшее совершённое', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6fffeba-3511-5661-9ea0-ec736454e4ce', 'en', 'past continuous', 'прошедшее длительное', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79a2f2f2-bb3d-5be3-a399-e2d2606a97c3', 'en', 'present perfect', 'настоящее совершённое', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5851e2ff-5b38-5a83-9910-bce95b245ef4', 'en', 'already', 'уже', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('160fc6e0-3607-5e9c-a7e3-1d0ddf0a6cdd', 'en', 'yet', 'ещё', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af4f0604-e764-554d-bef7-692688347815', 'en', 'while', 'в то время как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1296a37-f9a8-5724-84e2-3ae6f8c2a0e3', 'en', 'by the time', 'к тому времени как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '35de5936-5021-5573-a4a5-4db2ec807a5e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'past perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '35de5936-5021-5573-a4a5-4db2ec807a5e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'past continuous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '35de5936-5021-5573-a4a5-4db2ec807a5e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'present perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '35de5936-5021-5573-a4a5-4db2ec807a5e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'already' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '35de5936-5021-5573-a4a5-4db2ec807a5e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'yet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '35de5936-5021-5573-a4a5-4db2ec807a5e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'while' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '35de5936-5021-5573-a4a5-4db2ec807a5e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'by the time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, 'fa331e30-5f10-5d87-a153-069b9fadefe7', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'past perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, 'fa331e30-5f10-5d87-a153-069b9fadefe7', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'past continuous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, 'fa331e30-5f10-5d87-a153-069b9fadefe7', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'present perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, 'fa331e30-5f10-5d87-a153-069b9fadefe7', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'already' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, 'fa331e30-5f10-5d87-a153-069b9fadefe7', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'yet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, 'fa331e30-5f10-5d87-a153-069b9fadefe7', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'while' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, 'fa331e30-5f10-5d87-a153-069b9fadefe7', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'by the time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '31b38837-1850-5528-ab86-626d5139351c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'past perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '31b38837-1850-5528-ab86-626d5139351c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'past continuous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '31b38837-1850-5528-ab86-626d5139351c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'present perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '31b38837-1850-5528-ab86-626d5139351c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'already' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '31b38837-1850-5528-ab86-626d5139351c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'yet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '31b38837-1850-5528-ab86-626d5139351c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'while' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '98e91080-8369-5d35-b636-4fa1a73db791', id, '31b38837-1850-5528-ab86-626d5139351c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'by the time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
