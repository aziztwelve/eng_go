-- Track: B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('36aa2655-c7ba-5e55-919d-5e23de44e792', 'B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES', 'Трансформации и сложные предложения', 'Развивайте экзаменационные навыки уровня B2 по теме «Трансформации и сложные предложения», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Key-Word Transformations and Complex Sentences","ru":"Трансформации и сложные предложения"}'::jsonb, '{"en":"Develop B2 exam skills for key-word transformations and complex sentences by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Трансформации и сложные предложения», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0a2ac624-e970-5476-9c2c-bad3cdc662b5', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Preserving Meaning","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('218637ef-72a0-50e2-803d-5b02cbe989ba', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D01","left":"meaning equivalence","right":"эквивалентность значения"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D02","left":"inversion","right":"инверсия"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D03","left":"cleft sentence","right":"расщеплённое предложение"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D04","left":"participle clause","right":"причастный оборот"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D05","left":"reporting verb","right":"глагол сообщения"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D06","left":"fixed expression","right":"устойчивое выражение"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D07","left":"grammatical constraint","right":"грамматическое ограничение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a61e41a9-19d6-5ae9-8895-367a1f8c9078', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D08","is_correct":true,"text":"Meaning equivalence must be preserved even when the transformation requires a different grammar pattern or fixed expression."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7a766bd-1356-59cd-8702-c167a3f78fb1', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Meaning equivalence must be preserved even when the transformation requires a different grammar pattern or fixed expression.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эквивалентность значения должна сохраняться, даже когда трансформация требует другой грамматической модели или устойчивого выражения.","target_language":"en","word_bank":["Meaning","equivalence","must","be","preserved","even","when","the","transformation","requires","a","different","grammar","pattern","or","fixed","expression","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('588f410a-8766-5626-a909-08c55b1ecc9c', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"meaning equivalence","instruction":"Выберите подходящее слово.","options":["meaning equivalence","participle clause","fixed expression"],"sentence_template":"___ must be preserved even when the transformation requires a different grammar pattern or fixed expression."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b5cb071-0f91-5c41-a1ab-804fd6603e49', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Meaning","equivalence","must","be","preserved","even","when","the","transformation","requires","a","different","grammar","pattern","or","fixed","expression","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","expression","fixed","or","pattern","grammar","different","a","requires","transformation","the","when","even","preserved","be","must","equivalence","Meaning"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b4a6b53-dc2c-5bf4-a748-c0ddb884ec62', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Meaning equivalence must be preserved even when the transformation requires a different grammar pattern or fixed expression. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('955ae969-e65c-59c0-9465-ade409b45ad5', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Meaning equivalence must be preserved even when the transformation requires a different grammar pattern or fixed expression. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Эквивалентность значения должна сохраняться, даже когда трансформация требует другой грамматической модели или устойчивого выражения. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a77077f-fff9-5034-9221-7076b2e1be6a', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Meaning equivalence must be preserved even when the transformation requires a different grammar pattern or fixed expression.","translation":"Эквивалентность значения должна сохраняться, даже когда трансформация требует другой грамматической модели или устойчивого выражения.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Preserving Meaning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47efb071-093a-5143-b919-7325dc2adb61', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“meaning equivalence” means the preservation of meaning across different forms.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D11","is_correct":true,"text":"the preservation of meaning across different forms"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D12","is_correct":false,"text":"an altered word order used for emphasis or grammar"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D13","is_correct":false,"text":"a structure emphasising one element of a message"}],"word":"meaning equivalence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12cec369-e0fd-57f3-8a51-dbcf9d7db305', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Meaning equivalence must be preserved even when the transformation requires a different grammar pattern or fixed expression.","explanation":"The missing B2 exam expression is “meaning equivalence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"meaning equivalence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D14","is_correct":true},{"audio_text":"cleft sentence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D15","is_correct":false},{"audio_text":"reporting verb","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D16","is_correct":false}],"sentence_template":"___ must be preserved even when the transformation requires a different grammar pattern or fixed expression."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40668d9f-3190-509a-a138-7125e583ee55', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"meaning equivalence","explanation":"The complete answer uses “meaning equivalence” accurately.","hint_prefix":"mean","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ must be preserved even when the transformation requires a different grammar pattern or fixed expression."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91d80f1f-fbd2-5296-a15c-930eaef7f115', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"meaning equivalence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D17","text":"meaning equivalence"},{"audio_text":"inversion","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D18","text":"inversion"},{"audio_text":"cleft sentence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D19","text":"cleft sentence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd89f8c5-a277-547c-9430-2e6d90b81894', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Preserving Meaning”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D20","is_correct":true,"text":"Meaning equivalence must be preserved even when the transformation requires a different grammar pattern or fixed expression."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36aa2655-c7ba-5e55-919d-5e23de44e792', '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('25f4da44-2f18-5224-9872-00e610a08d6b', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Controlling Clause Structure","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('959c773d-93f9-5304-89c2-e72ba08b3ce5', '25f4da44-2f18-5224-9872-00e610a08d6b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D01","left":"meaning equivalence","right":"эквивалентность значения"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D02","left":"inversion","right":"инверсия"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D03","left":"cleft sentence","right":"расщеплённое предложение"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D04","left":"participle clause","right":"причастный оборот"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D05","left":"reporting verb","right":"глагол сообщения"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D06","left":"fixed expression","right":"устойчивое выражение"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D07","left":"grammatical constraint","right":"грамматическое ограничение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d51359d8-99e6-57b3-96ed-07f5d0f31f5d', '25f4da44-2f18-5224-9872-00e610a08d6b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D08","is_correct":true,"text":"Rarely had the researchers encountered such resistance before the revised procedure was introduced."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d9b5d79-efed-52ee-8453-b3d8986fd1ab', '25f4da44-2f18-5224-9872-00e610a08d6b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Rarely had the researchers encountered such resistance before the revised procedure was introduced.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Исследователи редко сталкивались с таким сопротивлением до введения пересмотренной процедуры.","target_language":"en","word_bank":["Rarely","had","the","researchers","encountered","such","resistance","before","the","revised","procedure","was","introduced","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c27c02d3-f544-5f24-8ca5-f7584891be0e', '25f4da44-2f18-5224-9872-00e610a08d6b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"inversion","instruction":"Выберите подходящее слово.","options":["inversion","reporting verb","grammatical constraint"],"sentence_template":"Rarely had the researchers encountered such resistance before the revised procedure was introduced."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8b7a4c2-72ce-5fd0-990b-42ad22d1aaa8', '25f4da44-2f18-5224-9872-00e610a08d6b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Rarely","had","the","researchers","encountered","such","resistance","before","the","revised","procedure","was","introduced","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","introduced","was","procedure","revised","the","before","resistance","such","encountered","researchers","the","had","Rarely"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fad701f-3b9e-5b4f-a1af-8aaaa2a39579', '25f4da44-2f18-5224-9872-00e610a08d6b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Rarely had the researchers encountered such resistance before the revised procedure was introduced. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f9151c5-7a23-5adb-a764-de145a35ee19', '25f4da44-2f18-5224-9872-00e610a08d6b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Rarely had the researchers encountered such resistance before the revised procedure was introduced. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Исследователи редко сталкивались с таким сопротивлением до введения пересмотренной процедуры. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ec5be30-22ea-5620-9ac6-416e3a69f73c', '25f4da44-2f18-5224-9872-00e610a08d6b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Rarely had the researchers encountered such resistance before the revised procedure was introduced.","translation":"Исследователи редко сталкивались с таким сопротивлением до введения пересмотренной процедуры.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Controlling Clause Structure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca58e6a2-a333-56b0-86f6-3bfb64d37ada', '25f4da44-2f18-5224-9872-00e610a08d6b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“inversion” means an altered word order used for emphasis or grammar.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D11","is_correct":true,"text":"an altered word order used for emphasis or grammar"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D12","is_correct":false,"text":"a structure emphasising one element of a message"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D13","is_correct":false,"text":"a reduced clause using a participle"}],"word":"inversion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('741ec971-d443-56c0-a845-2d48d0b3a018', '25f4da44-2f18-5224-9872-00e610a08d6b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Rarely had the researchers encountered such resistance before the revised procedure was introduced.","explanation":"The missing B2 exam expression is “inversion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"inversion","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D14","is_correct":true},{"audio_text":"participle clause","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D15","is_correct":false},{"audio_text":"fixed expression","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D16","is_correct":false}],"sentence_template":"Rarely had the researchers encountered such resistance before the revised procedure was introduced."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf0f4287-7700-5dc1-8bc1-08556359e187', '25f4da44-2f18-5224-9872-00e610a08d6b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"inversion","explanation":"The complete answer uses “inversion” accurately.","hint_prefix":"inve","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Rarely had the researchers encountered such resistance before the revised procedure was introduced."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06131acb-9acd-5ad0-8e20-9e5fad36310d', '25f4da44-2f18-5224-9872-00e610a08d6b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"meaning equivalence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D17","text":"meaning equivalence"},{"audio_text":"inversion","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D18","text":"inversion"},{"audio_text":"cleft sentence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D19","text":"cleft sentence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31f7b7bb-169d-58c6-bd34-796aa02f1cda', '25f4da44-2f18-5224-9872-00e610a08d6b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Controlling Clause Structure”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D20","is_correct":true,"text":"Rarely had the researchers encountered such resistance before the revised procedure was introduced."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36aa2655-c7ba-5e55-919d-5e23de44e792', '25f4da44-2f18-5224-9872-00e610a08d6b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bcfbd690-84a9-5056-bdbe-1d1130f223db', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Avoiding Transformation Traps","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9eec6591-6ddf-5423-9fe6-29bd3cdfc27d', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D01","left":"meaning equivalence","right":"эквивалентность значения"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D02","left":"inversion","right":"инверсия"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D03","left":"cleft sentence","right":"расщеплённое предложение"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D04","left":"participle clause","right":"причастный оборот"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D05","left":"reporting verb","right":"глагол сообщения"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D06","left":"fixed expression","right":"устойчивое выражение"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D07","left":"grammatical constraint","right":"грамматическое ограничение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90c42678-5da6-5d8f-9b18-51aa39ad02c5', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D08","is_correct":true,"text":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('444f9407-ce71-5150-972e-72f0e47d46d2', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Комитет возражал именно против отсутствия доказательств, а не против общей цели предложения.","target_language":"en","word_bank":["What","the","committee","objected","to","was","the","lack","of","evidence",",","not","the","overall","purpose","of","the","proposal","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d413a30a-7e33-5df0-bcba-4cd4cc20e96e', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cleft sentence","instruction":"Выберите подходящее слово.","options":["cleft sentence","fixed expression","meaning equivalence"],"sentence_template":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c082ac4-5df8-5216-a6a0-f235f4eec578', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["What","the","committee","objected","to","was","the","lack","of","evidence",",","not","the","overall","purpose","of","the","proposal","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","proposal","the","of","purpose","overall","the","not",",","evidence","of","lack","the","was","to","objected","committee","the","What"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db912396-67c4-5f6c-b9d8-0df2e3d9c604', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('171b4eea-e499-520b-b47b-617acff71198', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Комитет возражал именно против отсутствия доказательств, а не против общей цели предложения. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d33bb0f5-70e6-5702-91f6-6df51c796114', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal.","translation":"Комитет возражал именно против отсутствия доказательств, а не против общей цели предложения.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Avoiding Transformation Traps"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e590895-40f0-5570-b055-1bf1c5047e8f', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cleft sentence” means a structure emphasising one element of a message.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D11","is_correct":true,"text":"a structure emphasising one element of a message"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D12","is_correct":false,"text":"a reduced clause using a participle"},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D13","is_correct":false,"text":"a verb introducing reported speech or attitude"}],"word":"cleft sentence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b58459d4-fb26-5aa1-b8fe-0d268e8d3b5f', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal.","explanation":"The missing B2 exam expression is “cleft sentence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cleft sentence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D14","is_correct":true},{"audio_text":"reporting verb","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D15","is_correct":false},{"audio_text":"grammatical constraint","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D16","is_correct":false}],"sentence_template":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cadb168-a09b-57be-a001-aaee626a91c0', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cleft sentence","explanation":"The complete answer uses “cleft sentence” accurately.","hint_prefix":"clef","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8138f0ae-c898-547c-ae8a-14ab859360eb', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"meaning equivalence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D17","text":"meaning equivalence"},{"audio_text":"inversion","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D18","text":"inversion"},{"audio_text":"cleft sentence","id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D19","text":"cleft sentence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78e75dac-1d1f-5ba1-950d-a18b67cfdd25', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Avoiding Transformation Traps”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D20","is_correct":true,"text":"What the committee objected to was the lack of evidence, not the overall purpose of the proposal."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_KEY_WORD_TRANSFORMATIONS_AND_COMPLEX_SENTENCES_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36aa2655-c7ba-5e55-919d-5e23de44e792', 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67ef696c-1ade-51d2-aed2-427be2827f4d', 'en', 'meaning equivalence', 'эквивалентность значения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1c905ada-cd8d-5323-9c00-a615852f252a', 'en', 'inversion', 'инверсия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1f0da46-d19c-5b4e-b81f-767cd0050d41', 'en', 'cleft sentence', 'расщеплённое предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8905fe69-f0bd-5ba6-a743-a992ab19553a', 'en', 'participle clause', 'причастный оборот', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c794cbf-2633-51b9-8681-ac37a900d49b', 'en', 'reporting verb', 'глагол сообщения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89985800-edb8-52ed-9b67-0881e0bba4e5', 'en', 'fixed expression', 'устойчивое выражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb519589-aed0-597a-b94d-488f13ee20eb', 'en', 'grammatical constraint', 'грамматическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67ef696c-1ade-51d2-aed2-427be2827f4d', 'en', 'meaning equivalence', 'эквивалентность значения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1c905ada-cd8d-5323-9c00-a615852f252a', 'en', 'inversion', 'инверсия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1f0da46-d19c-5b4e-b81f-767cd0050d41', 'en', 'cleft sentence', 'расщеплённое предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8905fe69-f0bd-5ba6-a743-a992ab19553a', 'en', 'participle clause', 'причастный оборот', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c794cbf-2633-51b9-8681-ac37a900d49b', 'en', 'reporting verb', 'глагол сообщения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89985800-edb8-52ed-9b67-0881e0bba4e5', 'en', 'fixed expression', 'устойчивое выражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb519589-aed0-597a-b94d-488f13ee20eb', 'en', 'grammatical constraint', 'грамматическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67ef696c-1ade-51d2-aed2-427be2827f4d', 'en', 'meaning equivalence', 'эквивалентность значения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1c905ada-cd8d-5323-9c00-a615852f252a', 'en', 'inversion', 'инверсия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1f0da46-d19c-5b4e-b81f-767cd0050d41', 'en', 'cleft sentence', 'расщеплённое предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8905fe69-f0bd-5ba6-a743-a992ab19553a', 'en', 'participle clause', 'причастный оборот', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c794cbf-2633-51b9-8681-ac37a900d49b', 'en', 'reporting verb', 'глагол сообщения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89985800-edb8-52ed-9b67-0881e0bba4e5', 'en', 'fixed expression', 'устойчивое выражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb519589-aed0-597a-b94d-488f13ee20eb', 'en', 'grammatical constraint', 'грамматическое ограничение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaning equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'cleft sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'participle clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'reporting verb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'fixed expression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '0a2ac624-e970-5476-9c2c-bad3cdc662b5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'grammatical constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '25f4da44-2f18-5224-9872-00e610a08d6b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaning equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '25f4da44-2f18-5224-9872-00e610a08d6b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '25f4da44-2f18-5224-9872-00e610a08d6b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cleft sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '25f4da44-2f18-5224-9872-00e610a08d6b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'participle clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '25f4da44-2f18-5224-9872-00e610a08d6b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'reporting verb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '25f4da44-2f18-5224-9872-00e610a08d6b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fixed expression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, '25f4da44-2f18-5224-9872-00e610a08d6b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'grammatical constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaning equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cleft sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'participle clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'reporting verb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fixed expression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36aa2655-c7ba-5e55-919d-5e23de44e792', id, 'bcfbd690-84a9-5056-bdbe-1d1130f223db', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'grammatical constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
