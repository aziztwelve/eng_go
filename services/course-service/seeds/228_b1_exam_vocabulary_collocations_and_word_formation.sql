-- Track: B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('885edcd8-b064-53ef-aacc-700422a2a5f1', 'B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION', 'Лексика, словосочетания и словообразование', 'Развивайте экзаменационные навыки уровня B1 по теме «Лексика, словосочетания и словообразование».', '{"en":"Vocabulary, Collocations and Word Formation","ru":"Лексика, словосочетания и словообразование"}'::jsonb, '{"en":"Develop B1 exam skills for vocabulary, collocations and word formation.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Лексика, словосочетания и словообразование»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('04018547-69fd-5b5f-911f-b31a3d6136e1', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Vocabulary in Context","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21e2fbb4-2777-50de-b8c5-1eb44c3c3d00', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E01","left":"collocation","right":"устойчивое словосочетание"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E02","left":"prefix","right":"приставка"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E03","left":"suffix","right":"суффикс"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E04","left":"word family","right":"семейство слов"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E05","left":"context","right":"контекст"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E06","left":"formal","right":"формальный"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E07","left":"meaning","right":"значение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e080c65-e4d5-5756-9576-324e0df91c8a', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E08","is_correct":true,"text":"Learning a collocation is often more useful than memorising an individual word without context."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98ddb787-7125-5509-b374-93035f9dd71b', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Learning a collocation is often more useful than memorising an individual word without context.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Изучение устойчивого словосочетания часто полезнее, чем запоминание отдельного слова без контекста.","target_language":"en","word_bank":["Learning","a","collocation","is","often","more","useful","than","memorising","an","individual","word","without","context."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41a83609-660a-54e5-8d3f-de49073eb809', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"collocation","instruction":"Выберите подходящее слово.","options":["collocation","word family","formal"],"sentence_template":"Learning a ___ is often more useful than memorising an individual word without context."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('225c2b43-7490-5c5a-90d6-abf4ddfa5042', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Learning","a","collocation","is","often","more","useful","than","memorising","an","individual","word","without","context."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["context.","without","word","individual","an","memorising","than","useful","more","often","is","collocation","a","Learning"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a2d5def-b610-5789-801e-551809ff4465', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Learning a collocation is often more useful than memorising an individual word without context. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b1baed0-152f-583f-ace7-87943fca0042', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Learning a collocation is often more useful than memorising an individual word without context. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Изучение устойчивого словосочетания часто полезнее, чем запоминание отдельного слова без контекста. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1005efe-44ea-5bf0-a141-2ced46ff9149', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Learning a collocation is often more useful than memorising an individual word without context.","translation":"Изучение устойчивого словосочетания часто полезнее, чем запоминание отдельного слова без контекста.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Vocabulary in Context"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a90bd2e6-f6e6-5500-a657-60fafbcd3dbf', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“collocation” means words commonly used together.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E11","is_correct":true,"text":"words commonly used together"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E12","is_correct":false,"text":"letters added to the beginning of a word"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E13","is_correct":false,"text":"letters added to the end of a word"}],"word":"collocation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12b2ff8a-3894-548d-9652-a30ccee7c997', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Learning a collocation is often more useful than memorising an individual word without context.","explanation":"The missing exam expression is “collocation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"collocation","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E14","is_correct":true},{"audio_text":"suffix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E15","is_correct":false},{"audio_text":"context","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E16","is_correct":false}],"sentence_template":"Learning a ___ is often more useful than memorising an individual word without context."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce015c58-7f5c-56a1-b8d3-d9a834564bf3', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"collocation","explanation":"The sentence requires “collocation” to produce the correct B1 meaning.","hint_prefix":"col","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Learning a ___ is often more useful than memorising an individual word without context."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b33ea6f0-8049-5e8d-a114-647d6876dddb', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"collocation","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E17","text":"collocation"},{"audio_text":"prefix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E18","text":"prefix"},{"audio_text":"suffix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E19","text":"suffix"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9223c2e9-5eb0-58df-a47a-cbab298ba8e0', '04018547-69fd-5b5f-911f-b31a3d6136e1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Vocabulary in Context”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E20","is_correct":true,"text":"Learning a collocation is often more useful than memorising an individual word without context."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('885edcd8-b064-53ef-aacc-700422a2a5f1', '04018547-69fd-5b5f-911f-b31a3d6136e1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9a2a189b-f4de-551c-8768-96089960df12', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Common Collocations","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d811160-1967-5008-956d-bdfbe774d6c8', '9a2a189b-f4de-551c-8768-96089960df12', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E01","left":"collocation","right":"устойчивое словосочетание"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E02","left":"prefix","right":"приставка"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E03","left":"suffix","right":"суффикс"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E04","left":"word family","right":"семейство слов"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E05","left":"context","right":"контекст"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E06","left":"formal","right":"формальный"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E07","left":"meaning","right":"значение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4188f826-a640-5e63-8a33-c9adec1f5754', '9a2a189b-f4de-551c-8768-96089960df12', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E08","is_correct":true,"text":"The prefix changes the meaning from positive to negative, while the suffix changes the word class."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65a8963e-c078-54b3-bd1d-6713383c150c', '9a2a189b-f4de-551c-8768-96089960df12', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The prefix changes the meaning from positive to negative, while the suffix changes the word class.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Приставка меняет значение с положительного на отрицательное, а суффикс меняет часть речи.","target_language":"en","word_bank":["The","prefix","changes","the","meaning","from","positive","to","negative,","while","the","suffix","changes","the","word","class."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('494f4916-6097-5e70-9464-bb4fddb2fff3', '9a2a189b-f4de-551c-8768-96089960df12', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"prefix","instruction":"Выберите подходящее слово.","options":["prefix","context","meaning"],"sentence_template":"The ___ changes the meaning from positive to negative, while the suffix changes the word class."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32d78421-2ab4-5a3d-b396-316d0ec1159a', '9a2a189b-f4de-551c-8768-96089960df12', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","prefix","changes","the","meaning","from","positive","to","negative,","while","the","suffix","changes","the","word","class."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["class.","word","the","changes","suffix","the","while","negative,","to","positive","from","meaning","the","changes","prefix","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18004579-9a4b-525b-9127-56342bbdbb90', '9a2a189b-f4de-551c-8768-96089960df12', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The prefix changes the meaning from positive to negative, while the suffix changes the word class. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e86354c-c0c6-5d2e-92cf-83f159136894', '9a2a189b-f4de-551c-8768-96089960df12', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The prefix changes the meaning from positive to negative, while the suffix changes the word class. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Приставка меняет значение с положительного на отрицательное, а суффикс меняет часть речи. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afe71d3d-eece-5f51-af23-fb3ca58da4e3', '9a2a189b-f4de-551c-8768-96089960df12', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"The prefix changes the meaning from positive to negative, while the suffix changes the word class.","translation":"Приставка меняет значение с положительного на отрицательное, а суффикс меняет часть речи.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Common Collocations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce47ee27-2460-5904-9bd7-03152ad8de43', '9a2a189b-f4de-551c-8768-96089960df12', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“prefix” means letters added to the beginning of a word.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E11","is_correct":true,"text":"letters added to the beginning of a word"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E12","is_correct":false,"text":"letters added to the end of a word"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E13","is_correct":false,"text":"related words sharing a root"}],"word":"prefix"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('677514ca-01dc-565c-89d7-8eb74c738ad4', '9a2a189b-f4de-551c-8768-96089960df12', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The prefix changes the meaning from positive to negative, while the suffix changes the word class.","explanation":"The missing exam expression is “prefix”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"prefix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E14","is_correct":true},{"audio_text":"word family","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E15","is_correct":false},{"audio_text":"formal","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E16","is_correct":false}],"sentence_template":"The ___ changes the meaning from positive to negative, while the suffix changes the word class."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('857f1aa2-cf57-5272-91f9-9c6ee1488b00', '9a2a189b-f4de-551c-8768-96089960df12', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"prefix","explanation":"The sentence requires “prefix” to produce the correct B1 meaning.","hint_prefix":"pre","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ changes the meaning from positive to negative, while the suffix changes the word class."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bab06a6-344a-53f8-9ac2-fa53d6f43fa2', '9a2a189b-f4de-551c-8768-96089960df12', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"collocation","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E17","text":"collocation"},{"audio_text":"prefix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E18","text":"prefix"},{"audio_text":"suffix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E19","text":"suffix"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3614ff09-bf0c-560c-99e4-ce49814a742e', '9a2a189b-f4de-551c-8768-96089960df12', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Common Collocations”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E20","is_correct":true,"text":"The prefix changes the meaning from positive to negative, while the suffix changes the word class."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('885edcd8-b064-53ef-aacc-700422a2a5f1', '9a2a189b-f4de-551c-8768-96089960df12', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('07eba5d8-2aad-54a6-9b0c-a536069b47a2', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Prefixes and Suffixes","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fb4e604-2370-57cc-b616-143045e352cd', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E01","left":"collocation","right":"устойчивое словосочетание"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E02","left":"prefix","right":"приставка"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E03","left":"suffix","right":"суффикс"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E04","left":"word family","right":"семейство слов"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E05","left":"context","right":"контекст"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E06","left":"formal","right":"формальный"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E07","left":"meaning","right":"значение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb3ab59b-de15-598b-9da7-135f85beeed0', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E08","is_correct":true,"text":"Recognising a word family helps learners choose the formal noun required by the sentence."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b01a807-e7d7-5d08-afdb-cdac78b86504', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Recognising a word family helps learners choose the formal noun required by the sentence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Распознавание семейства слов помогает учащимся выбрать формальное существительное, необходимое в предложении.","target_language":"en","word_bank":["Recognising","a","word","family","helps","learners","choose","the","formal","noun","required","by","the","sentence."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b43ea7bc-c091-5e98-80b9-7da9a6eee8d5', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"suffix","instruction":"Выберите подходящее слово.","options":["suffix","formal","collocation"],"sentence_template":"Recognising a word family helps learners choose the formal noun required by the sentence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec64db29-aefd-50d8-b149-f52a899be569', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Recognising","a","word","family","helps","learners","choose","the","formal","noun","required","by","the","sentence."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["sentence.","the","by","required","noun","formal","the","choose","learners","helps","family","word","a","Recognising"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76a1390c-83c4-5edc-b515-03356e07228d', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Recognising a word family helps learners choose the formal noun required by the sentence. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc64ac46-12ed-5268-ac29-fd7fbab69a80', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Recognising a word family helps learners choose the formal noun required by the sentence. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Распознавание семейства слов помогает учащимся выбрать формальное существительное, необходимое в предложении. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e7e5726-5de0-5061-a601-407a45e7dc62', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Recognising a word family helps learners choose the formal noun required by the sentence.","translation":"Распознавание семейства слов помогает учащимся выбрать формальное существительное, необходимое в предложении.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Prefixes and Suffixes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88b591eb-a644-592d-9674-88562387b11b', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“suffix” means letters added to the end of a word.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E11","is_correct":true,"text":"letters added to the end of a word"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E12","is_correct":false,"text":"related words sharing a root"},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E13","is_correct":false,"text":"information surrounding a word"}],"word":"suffix"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('288a660f-5ee1-5b95-86fa-cfc684384fce', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Recognising a word family helps learners choose the formal noun required by the sentence.","explanation":"The missing exam expression is “suffix”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"suffix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E14","is_correct":true},{"audio_text":"context","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E15","is_correct":false},{"audio_text":"meaning","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E16","is_correct":false}],"sentence_template":"Recognising a word family helps learners choose the formal noun required by the sentence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb7fdb26-9ba8-5eb4-a3ec-b0f850e61609', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"suffix","explanation":"The sentence requires “suffix” to produce the correct B1 meaning.","hint_prefix":"suf","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Recognising a word family helps learners choose the formal noun required by the sentence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28151e56-6b14-5feb-b0f0-9c57ea23eee2', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"collocation","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E17","text":"collocation"},{"audio_text":"prefix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E18","text":"prefix"},{"audio_text":"suffix","id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E19","text":"suffix"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecaa44b6-77eb-5b7c-ac82-95222c7b4548', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Prefixes and Suffixes”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E20","is_correct":true,"text":"Recognising a word family helps learners choose the formal noun required by the sentence."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_VOCABULARY_COLLOCATIONS_AND_WORD_FORMATION_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('885edcd8-b064-53ef-aacc-700422a2a5f1', '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('feb89fa8-7431-54be-b924-cbcc82ad900e', 'en', 'collocation', 'устойчивое словосочетание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81cae03b-3775-5281-ae48-dbf81f1f81e4', 'en', 'prefix', 'приставка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c96c12e-182c-5c91-a82b-d4f6200ae48d', 'en', 'suffix', 'суффикс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f3d0e3a-ccca-5147-bb53-1ddc8344e114', 'en', 'word family', 'семейство слов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b20701-60d3-544b-9aed-6456f497de49', 'en', 'context', 'контекст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5cfe3e7-26f5-5bb3-85b9-89836887f30e', 'en', 'formal', 'формальный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04a7e45f-c071-5e53-bfd7-ea1b8bd52bb2', 'en', 'meaning', 'значение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('feb89fa8-7431-54be-b924-cbcc82ad900e', 'en', 'collocation', 'устойчивое словосочетание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81cae03b-3775-5281-ae48-dbf81f1f81e4', 'en', 'prefix', 'приставка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c96c12e-182c-5c91-a82b-d4f6200ae48d', 'en', 'suffix', 'суффикс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f3d0e3a-ccca-5147-bb53-1ddc8344e114', 'en', 'word family', 'семейство слов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b20701-60d3-544b-9aed-6456f497de49', 'en', 'context', 'контекст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5cfe3e7-26f5-5bb3-85b9-89836887f30e', 'en', 'formal', 'формальный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04a7e45f-c071-5e53-bfd7-ea1b8bd52bb2', 'en', 'meaning', 'значение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('feb89fa8-7431-54be-b924-cbcc82ad900e', 'en', 'collocation', 'устойчивое словосочетание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81cae03b-3775-5281-ae48-dbf81f1f81e4', 'en', 'prefix', 'приставка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c96c12e-182c-5c91-a82b-d4f6200ae48d', 'en', 'suffix', 'суффикс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f3d0e3a-ccca-5147-bb53-1ddc8344e114', 'en', 'word family', 'семейство слов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b20701-60d3-544b-9aed-6456f497de49', 'en', 'context', 'контекст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5cfe3e7-26f5-5bb3-85b9-89836887f30e', 'en', 'formal', 'формальный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04a7e45f-c071-5e53-bfd7-ea1b8bd52bb2', 'en', 'meaning', 'значение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '04018547-69fd-5b5f-911f-b31a3d6136e1', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '04018547-69fd-5b5f-911f-b31a3d6136e1', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'prefix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '04018547-69fd-5b5f-911f-b31a3d6136e1', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'suffix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '04018547-69fd-5b5f-911f-b31a3d6136e1', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'word family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '04018547-69fd-5b5f-911f-b31a3d6136e1', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '04018547-69fd-5b5f-911f-b31a3d6136e1', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '04018547-69fd-5b5f-911f-b31a3d6136e1', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '9a2a189b-f4de-551c-8768-96089960df12', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '9a2a189b-f4de-551c-8768-96089960df12', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'prefix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '9a2a189b-f4de-551c-8768-96089960df12', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'suffix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '9a2a189b-f4de-551c-8768-96089960df12', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'word family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '9a2a189b-f4de-551c-8768-96089960df12', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '9a2a189b-f4de-551c-8768-96089960df12', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '9a2a189b-f4de-551c-8768-96089960df12', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'prefix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'suffix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'word family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '885edcd8-b064-53ef-aacc-700422a2a5f1', id, '07eba5d8-2aad-54a6-9b0c-a536069b47a2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
