-- Track: B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b53e1cc7-9f35-5e00-b4bb-5ef08b911157', 'B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE', 'Чтение: основная мысль, структура и цель', 'Развивайте экзаменационные навыки уровня B1 по теме «Чтение: основная мысль, структура и цель».', '{"en":"Reading for Gist, Structure and Purpose","ru":"Чтение: основная мысль, структура и цель"}'::jsonb, '{"en":"Develop B1 exam skills for reading for gist, structure and purpose.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Чтение: основная мысль, структура и цель»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('94e18bb6-76a3-55b5-9f33-023bd5e732b4', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Identifying Purpose","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e49e46fb-63cc-5c08-92fa-2ba8bc5fde33', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E01","left":"gist","right":"общий смысл"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E02","left":"purpose","right":"цель"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E03","left":"heading","right":"заголовок"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E04","left":"paragraph","right":"абзац"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E05","left":"contrast","right":"противопоставление"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E06","left":"conclusion","right":"вывод"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E07","left":"structure","right":"структура"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3af9503-ecef-5e95-9560-1e5a8efbc421', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E08","is_correct":true,"text":"The article’s main purpose is to compare two approaches rather than recommend a single solution."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44152aa3-34d2-5ef6-a831-ac3d6466641e', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The article’s main purpose is to compare two approaches rather than recommend a single solution.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Главная цель статьи — сравнить два подхода, а не рекомендовать одно решение.","target_language":"en","word_bank":["The","article’s","main","purpose","is","to","compare","two","approaches","rather","than","recommend","a","single","solution."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1da02474-d8e5-5893-b925-fe4616479b07', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"gist","instruction":"Выберите подходящее слово.","options":["gist","paragraph","conclusion"],"sentence_template":"The article’s main purpose is to compare two approaches rather than recommend a single solution."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('475a1ac6-9156-5d66-a29d-7c93a61a7c85', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","article’s","main","purpose","is","to","compare","two","approaches","rather","than","recommend","a","single","solution."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["solution.","single","a","recommend","than","rather","approaches","two","compare","to","is","purpose","main","article’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e15906a8-df6b-5171-9aa0-c1c67c1d105e', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The article’s main purpose is to compare two approaches rather than recommend a single solution. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59a95b61-46d9-5f34-b394-e78ce871b452', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The article’s main purpose is to compare two approaches rather than recommend a single solution. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Главная цель статьи — сравнить два подхода, а не рекомендовать одно решение. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc49b69e-644b-5e26-80af-a45b408b8521', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"The article’s main purpose is to compare two approaches rather than recommend a single solution.","translation":"Главная цель статьи — сравнить два подхода, а не рекомендовать одно решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Identifying Purpose"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07af9029-0948-5623-8a54-dc11c03da4d5', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“gist” means the general meaning of a text.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E11","is_correct":true,"text":"the general meaning of a text"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E12","is_correct":false,"text":"the reason a text was written"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E13","is_correct":false,"text":"a title for a section"}],"word":"gist"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68ddf3b1-d597-5cc4-a894-0e1301f234be', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The article’s main purpose is to compare two approaches rather than recommend a single solution.","explanation":"The missing exam expression is “gist”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"gist","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E14","is_correct":true},{"audio_text":"heading","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E15","is_correct":false},{"audio_text":"contrast","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E16","is_correct":false}],"sentence_template":"The article’s main purpose is to compare two approaches rather than recommend a single solution."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bef6a869-a7d4-532e-a332-8fef6b338015', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"gist","explanation":"The sentence requires “gist” to produce the correct B1 meaning.","hint_prefix":"gis","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The article’s main purpose is to compare two approaches rather than recommend a single solution."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('309c4a1a-829c-5dfa-9dcf-5a59e515bb5e', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"gist","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E17","text":"gist"},{"audio_text":"purpose","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E18","text":"purpose"},{"audio_text":"heading","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E19","text":"heading"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c9ecd69-6b95-5a19-a1f1-27e63aaed962', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Identifying Purpose”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E20","is_correct":true,"text":"The article’s main purpose is to compare two approaches rather than recommend a single solution."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b53e1cc7-9f35-5e00-b4bb-5ef08b911157', '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c3787cfa-85c1-526d-9ff0-c00683c9ec43', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Following Text Structure","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('342b354d-b8da-59f9-bbd8-aa64b28a1c9c', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E01","left":"gist","right":"общий смысл"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E02","left":"purpose","right":"цель"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E03","left":"heading","right":"заголовок"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E04","left":"paragraph","right":"абзац"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E05","left":"contrast","right":"противопоставление"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E06","left":"conclusion","right":"вывод"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E07","left":"structure","right":"структура"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c5007b6-781f-5f75-a8fb-d2971cb147ba', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E08","is_correct":true,"text":"Each heading signals a change in focus, which makes the structure easier to follow."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5841ace5-186e-57a7-8591-c45da7ae4df9', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Each heading signals a change in focus, which makes the structure easier to follow.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Каждый заголовок указывает на изменение фокуса, что облегчает понимание структуры.","target_language":"en","word_bank":["Each","heading","signals","a","change","in","focus,","which","makes","the","structure","easier","to","follow."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c6659ed-19c4-5d0e-81db-f63654d55283', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"purpose","instruction":"Выберите подходящее слово.","options":["purpose","contrast","structure"],"sentence_template":"Each heading signals a change in focus, which makes the structure easier to follow."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('113cef3c-0e26-5f1d-a85b-c4e7eaf3ce68', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Each","heading","signals","a","change","in","focus,","which","makes","the","structure","easier","to","follow."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["follow.","to","easier","structure","the","makes","which","focus,","in","change","a","signals","heading","Each"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9db2165b-8a01-5946-b4d0-8c5f733f090a', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Each heading signals a change in focus, which makes the structure easier to follow. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e844e3b-1631-5058-8a42-68a8f74e1695', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Each heading signals a change in focus, which makes the structure easier to follow. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Каждый заголовок указывает на изменение фокуса, что облегчает понимание структуры. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1aa38ee-4c57-5f96-acf4-406d4e5c9021', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Each heading signals a change in focus, which makes the structure easier to follow.","translation":"Каждый заголовок указывает на изменение фокуса, что облегчает понимание структуры.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Following Text Structure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18297382-7484-57a6-8abc-4f45fb26419c', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“purpose” means the reason a text was written.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E11","is_correct":true,"text":"the reason a text was written"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E12","is_correct":false,"text":"a title for a section"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E13","is_correct":false,"text":"a group of sentences developing one idea"}],"word":"purpose"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb4ca046-977b-58ef-ae72-e598e4b7a939', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Each heading signals a change in focus, which makes the structure easier to follow.","explanation":"The missing exam expression is “purpose”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"purpose","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E14","is_correct":true},{"audio_text":"paragraph","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E15","is_correct":false},{"audio_text":"conclusion","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E16","is_correct":false}],"sentence_template":"Each heading signals a change in focus, which makes the structure easier to follow."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52874b1a-e34a-5b51-9f48-5be891141c5e', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"purpose","explanation":"The sentence requires “purpose” to produce the correct B1 meaning.","hint_prefix":"pur","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Each heading signals a change in focus, which makes the structure easier to follow."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9dd5fca-b230-5d9b-820b-fa90b74d6ce9', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"gist","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E17","text":"gist"},{"audio_text":"purpose","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E18","text":"purpose"},{"audio_text":"heading","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E19","text":"heading"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('743c263d-f05b-5737-8046-b24068edb8e6', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Following Text Structure”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E20","is_correct":true,"text":"Each heading signals a change in focus, which makes the structure easier to follow."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b53e1cc7-9f35-5e00-b4bb-5ef08b911157', 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a47eec2e-6b57-5031-a2e9-23ee93857caf', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Choosing the Best Summary","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92d68ce6-386e-55a3-bfc5-23fa12cb7806', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E01","left":"gist","right":"общий смысл"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E02","left":"purpose","right":"цель"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E03","left":"heading","right":"заголовок"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E04","left":"paragraph","right":"абзац"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E05","left":"contrast","right":"противопоставление"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E06","left":"conclusion","right":"вывод"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E07","left":"structure","right":"структура"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9719c63d-a1a7-5a17-8950-87d998a9e49a', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E08","is_correct":true,"text":"The conclusion returns to the main contrast and explains why the debate remains unresolved."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca2eecae-a27c-530f-8b7c-79f7274883aa', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The conclusion returns to the main contrast and explains why the debate remains unresolved.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вывод возвращается к главному противопоставлению и объясняет, почему спор остаётся нерешённым.","target_language":"en","word_bank":["The","conclusion","returns","to","the","main","contrast","and","explains","why","the","debate","remains","unresolved."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec05446d-e11d-5c9e-8158-b44db5452d82', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"heading","instruction":"Выберите подходящее слово.","options":["heading","conclusion","gist"],"sentence_template":"The conclusion returns to the main contrast and explains why the debate remains unresolved."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0636e69e-ffaa-503d-9348-6ba3efbc14f9', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","conclusion","returns","to","the","main","contrast","and","explains","why","the","debate","remains","unresolved."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["unresolved.","remains","debate","the","why","explains","and","contrast","main","the","to","returns","conclusion","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cc9d778-9107-5ba9-a64a-84d8a834eac2', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The conclusion returns to the main contrast and explains why the debate remains unresolved. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8b0d161-f5a5-5015-8e68-94091c875305', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The conclusion returns to the main contrast and explains why the debate remains unresolved. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Вывод возвращается к главному противопоставлению и объясняет, почему спор остаётся нерешённым. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a9caf33-6a63-5434-a483-9487304c2210', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"The conclusion returns to the main contrast and explains why the debate remains unresolved.","translation":"Вывод возвращается к главному противопоставлению и объясняет, почему спор остаётся нерешённым.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Choosing the Best Summary"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1ac5621-7b04-5f92-a2f9-f5812e7a1dbf', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“heading” means a title for a section.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E11","is_correct":true,"text":"a title for a section"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E12","is_correct":false,"text":"a group of sentences developing one idea"},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E13","is_correct":false,"text":"a difference between ideas"}],"word":"heading"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b904cc7d-5448-5e34-8a53-f78df780002b', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The conclusion returns to the main contrast and explains why the debate remains unresolved.","explanation":"The missing exam expression is “heading”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"heading","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E14","is_correct":true},{"audio_text":"contrast","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E15","is_correct":false},{"audio_text":"structure","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E16","is_correct":false}],"sentence_template":"The conclusion returns to the main contrast and explains why the debate remains unresolved."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6598a86e-b6e9-5d18-9d3b-f7534357c375', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"heading","explanation":"The sentence requires “heading” to produce the correct B1 meaning.","hint_prefix":"hea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The conclusion returns to the main contrast and explains why the debate remains unresolved."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd1f9244-c10a-5deb-8dc3-8d6e0cf67645', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"gist","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E17","text":"gist"},{"audio_text":"purpose","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E18","text":"purpose"},{"audio_text":"heading","id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E19","text":"heading"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b45db53-f9c8-5fc2-89da-b7eb91e623ab', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Choosing the Best Summary”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E20","is_correct":true,"text":"The conclusion returns to the main contrast and explains why the debate remains unresolved."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_READING_FOR_GIST_STRUCTURE_AND_PURPOSE_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b53e1cc7-9f35-5e00-b4bb-5ef08b911157', 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('392994a1-4319-522b-863b-8dbe2678f770', 'en', 'gist', 'общий смысл', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a9069-68fa-5d84-a99c-82c23899818b', 'en', 'purpose', 'цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6408a2b2-e2d2-569d-8296-6c060ca593ae', 'en', 'heading', 'заголовок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75837a20-41dc-5c53-a24a-476573f53a7f', 'en', 'paragraph', 'абзац', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03b91147-e5db-5c4a-9ed1-c3a6bb975be6', 'en', 'contrast', 'противопоставление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594e7ca9-6f79-54bc-882c-15fe40bf8708', 'en', 'conclusion', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('94644b85-ecbd-5613-a2df-e92ff17e1718', 'en', 'structure', 'структура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('392994a1-4319-522b-863b-8dbe2678f770', 'en', 'gist', 'общий смысл', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a9069-68fa-5d84-a99c-82c23899818b', 'en', 'purpose', 'цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6408a2b2-e2d2-569d-8296-6c060ca593ae', 'en', 'heading', 'заголовок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75837a20-41dc-5c53-a24a-476573f53a7f', 'en', 'paragraph', 'абзац', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03b91147-e5db-5c4a-9ed1-c3a6bb975be6', 'en', 'contrast', 'противопоставление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594e7ca9-6f79-54bc-882c-15fe40bf8708', 'en', 'conclusion', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('94644b85-ecbd-5613-a2df-e92ff17e1718', 'en', 'structure', 'структура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('392994a1-4319-522b-863b-8dbe2678f770', 'en', 'gist', 'общий смысл', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a9069-68fa-5d84-a99c-82c23899818b', 'en', 'purpose', 'цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6408a2b2-e2d2-569d-8296-6c060ca593ae', 'en', 'heading', 'заголовок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75837a20-41dc-5c53-a24a-476573f53a7f', 'en', 'paragraph', 'абзац', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03b91147-e5db-5c4a-9ed1-c3a6bb975be6', 'en', 'contrast', 'противопоставление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594e7ca9-6f79-54bc-882c-15fe40bf8708', 'en', 'conclusion', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('94644b85-ecbd-5613-a2df-e92ff17e1718', 'en', 'structure', 'структура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'gist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'heading' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, '94e18bb6-76a3-55b5-9f33-023bd5e732b4', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'structure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'gist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'heading' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'c3787cfa-85c1-526d-9ff0-c00683c9ec43', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'structure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'gist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'heading' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53e1cc7-9f35-5e00-b4bb-5ef08b911157', id, 'a47eec2e-6b57-5031-a2e9-23ee93857caf', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'structure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
