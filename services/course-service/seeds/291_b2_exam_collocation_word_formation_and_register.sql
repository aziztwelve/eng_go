-- Track: B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('bbce2282-8156-5c94-835a-46774932e5f8', 'B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER', 'Сочетаемость, словообразование и регистр', 'Развивайте экзаменационные навыки уровня B2 по теме «Сочетаемость, словообразование и регистр», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Collocation, Word Formation and Register","ru":"Сочетаемость, словообразование и регистр"}'::jsonb, '{"en":"Develop B2 exam skills for collocation, word formation and register by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Сочетаемость, словообразование и регистр», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('990adc8d-a839-58f2-a0f7-3789df988e95', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Recognising Strong Collocations","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc7e5bbc-514e-55d5-b28e-19dc70daad7f', '990adc8d-a839-58f2-a0f7-3789df988e95', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D01","left":"strong collocation","right":"устойчивая сочетаемость"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D02","left":"word family","right":"словообразовательное гнездо"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D03","left":"negative prefix","right":"отрицательная приставка"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D04","left":"dependent preposition","right":"зависимый предлог"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D05","left":"lexical register","right":"лексический регистр"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D06","left":"contextual clue","right":"контекстная подсказка"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D07","left":"grammatical function","right":"грамматическая функция"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cd9e6c5-042f-5030-b204-83d9e368c843', '990adc8d-a839-58f2-a0f7-3789df988e95', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D08","is_correct":true,"text":"A strong collocation must sound natural in context even when another combination appears grammatically possible."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11af08ca-fc46-5292-909e-435bf56bd139', '990adc8d-a839-58f2-a0f7-3789df988e95', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A strong collocation must sound natural in context even when another combination appears grammatically possible.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Устойчивая сочетаемость должна звучать естественно в контексте, даже если другое сочетание кажется грамматически возможным.","target_language":"en","word_bank":["A","strong","collocation","must","sound","natural","in","context","even","when","another","combination","appears","grammatically","possible","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45a25521-778d-5800-b36f-0dd1d0e3181a', '990adc8d-a839-58f2-a0f7-3789df988e95', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"strong collocation","instruction":"Выберите подходящее слово.","options":["strong collocation","dependent preposition","contextual clue"],"sentence_template":"A ___ must sound natural in context even when another combination appears grammatically possible."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5e29ee4-1bdd-5b1a-b7be-84d94dc64278', '990adc8d-a839-58f2-a0f7-3789df988e95', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","strong","collocation","must","sound","natural","in","context","even","when","another","combination","appears","grammatically","possible","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","possible","grammatically","appears","combination","another","when","even","context","in","natural","sound","must","collocation","strong","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4badc66a-7c50-56be-a8b9-852bcdaafc1f', '990adc8d-a839-58f2-a0f7-3789df988e95', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A strong collocation must sound natural in context even when another combination appears grammatically possible. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2e26b8f-4d8b-56f5-b8e9-762c32418ec3', '990adc8d-a839-58f2-a0f7-3789df988e95', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A strong collocation must sound natural in context even when another combination appears grammatically possible. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Устойчивая сочетаемость должна звучать естественно в контексте, даже если другое сочетание кажется грамматически возможным. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('945d581c-5f47-5e98-9746-c730b488c3c6', '990adc8d-a839-58f2-a0f7-3789df988e95', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A strong collocation must sound natural in context even when another combination appears grammatically possible.","translation":"Устойчивая сочетаемость должна звучать естественно в контексте, даже если другое сочетание кажется грамматически возможным.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Recognising Strong Collocations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f615aa8b-5704-54cf-a416-6bb6853e55a5', '990adc8d-a839-58f2-a0f7-3789df988e95', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“strong collocation” means a conventional combination of words.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D11","is_correct":true,"text":"a conventional combination of words"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D12","is_correct":false,"text":"related forms built from the same base"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D13","is_correct":false,"text":"a prefix creating an opposite meaning"}],"word":"strong collocation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a44b9558-8c2f-5f1a-ad6d-e85b2992a6b5', '990adc8d-a839-58f2-a0f7-3789df988e95', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A strong collocation must sound natural in context even when another combination appears grammatically possible.","explanation":"The missing B2 exam expression is “strong collocation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"strong collocation","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D14","is_correct":true},{"audio_text":"negative prefix","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D15","is_correct":false},{"audio_text":"lexical register","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D16","is_correct":false}],"sentence_template":"A ___ must sound natural in context even when another combination appears grammatically possible."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c96b5f9b-f322-5539-8ddb-b6d734fa2495', '990adc8d-a839-58f2-a0f7-3789df988e95', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"strong collocation","explanation":"The complete answer uses “strong collocation” accurately.","hint_prefix":"stro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ must sound natural in context even when another combination appears grammatically possible."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3459d068-f1e0-5822-b443-6f9a8ff17065', '990adc8d-a839-58f2-a0f7-3789df988e95', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strong collocation","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D17","text":"strong collocation"},{"audio_text":"word family","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D18","text":"word family"},{"audio_text":"negative prefix","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D19","text":"negative prefix"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1098180-2892-5da0-ba15-2667b7d00341', '990adc8d-a839-58f2-a0f7-3789df988e95', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Recognising Strong Collocations”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D20","is_correct":true,"text":"A strong collocation must sound natural in context even when another combination appears grammatically possible."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bbce2282-8156-5c94-835a-46774932e5f8', '990adc8d-a839-58f2-a0f7-3789df988e95', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a783fdea-79ea-5be0-abf1-b1929e68e7f8', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Building Word Families","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f08eaf30-5f80-5918-9e63-9d7a64d3f067', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D01","left":"strong collocation","right":"устойчивая сочетаемость"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D02","left":"word family","right":"словообразовательное гнездо"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D03","left":"negative prefix","right":"отрицательная приставка"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D04","left":"dependent preposition","right":"зависимый предлог"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D05","left":"lexical register","right":"лексический регистр"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D06","left":"contextual clue","right":"контекстная подсказка"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D07","left":"grammatical function","right":"грамматическая функция"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5800ccf-05e3-5642-934d-45c0816d0dac', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D08","is_correct":true,"text":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same word family."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('156b4545-8486-5939-a6bf-bb97d258bdbd', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same word family.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Грамматическая функция показывает, требуется ли в пропуске существительное, глагол, прилагательное или наречие из одного словообразовательного гнезда.","target_language":"en","word_bank":["The","grammatical","function","identifies","whether","the","gap","requires","a","noun",",","verb",",","adjective",",","or","adverb","from","the","same","word","family","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('015ee46a-f4ac-5039-b940-8bc169ce47b3', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"word family","instruction":"Выберите подходящее слово.","options":["word family","lexical register","grammatical function"],"sentence_template":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('867e4e3b-27a3-57ff-873c-298d185ada60', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","grammatical","function","identifies","whether","the","gap","requires","a","noun",",","verb",",","adjective",",","or","adverb","from","the","same","word","family","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","family","word","same","the","from","adverb","or",",","adjective",",","verb",",","noun","a","requires","gap","the","whether","identifies","function","grammatical","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3eab41ee-3050-552b-b089-a9bc268943ca', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same word family. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cc07fe1-2fa1-59eb-ba7a-7851ed5647c0', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same word family. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Грамматическая функция показывает, требуется ли в пропуске существительное, глагол, прилагательное или наречие из одного словообразовательного гнезда. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d80b5cd-7872-5907-afd4-63554030040a', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same word family.","translation":"Грамматическая функция показывает, требуется ли в пропуске существительное, глагол, прилагательное или наречие из одного словообразовательного гнезда.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Building Word Families"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d77835b-1159-50f1-8d3f-cccb6b346748', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“word family” means related forms built from the same base.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D11","is_correct":true,"text":"related forms built from the same base"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D12","is_correct":false,"text":"a prefix creating an opposite meaning"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D13","is_correct":false,"text":"a preposition conventionally required by a word"}],"word":"word family"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59148eca-abf8-544d-9571-250fcfa1e9b7', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same word family.","explanation":"The missing B2 exam expression is “word family”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"word family","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D14","is_correct":true},{"audio_text":"dependent preposition","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D15","is_correct":false},{"audio_text":"contextual clue","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D16","is_correct":false}],"sentence_template":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ede1fab-a363-58bc-b2e7-25bcb1dc9180', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"word family","explanation":"The complete answer uses “word family” accurately.","hint_prefix":"word","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('838b6360-c75d-58c0-b324-4c45c2f92117', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strong collocation","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D17","text":"strong collocation"},{"audio_text":"word family","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D18","text":"word family"},{"audio_text":"negative prefix","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D19","text":"negative prefix"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52a97ab6-0a5b-566b-9d6a-25c237a29744', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Building Word Families”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D20","is_correct":true,"text":"The grammatical function identifies whether the gap requires a noun, verb, adjective, or adverb from the same word family."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bbce2282-8156-5c94-835a-46774932e5f8', 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9d3fe572-ee52-5716-ba81-addd529dc751', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Selecting Appropriate Register","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('851a45bd-a371-5b0e-a606-c9bfa875ded8', '9d3fe572-ee52-5716-ba81-addd529dc751', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D01","left":"strong collocation","right":"устойчивая сочетаемость"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D02","left":"word family","right":"словообразовательное гнездо"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D03","left":"negative prefix","right":"отрицательная приставка"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D04","left":"dependent preposition","right":"зависимый предлог"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D05","left":"lexical register","right":"лексический регистр"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D06","left":"contextual clue","right":"контекстная подсказка"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D07","left":"grammatical function","right":"грамматическая функция"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e6739a2-64d4-574e-9ff2-6b6522772e65', '9d3fe572-ee52-5716-ba81-addd529dc751', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D08","is_correct":true,"text":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ff0b9a2-b13f-5a44-afe6-50afd70aeccc', '9d3fe572-ee52-5716-ba81-addd529dc751', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Лексический регистр важен, поскольку неформальный фразовый глагол может быть неуместен в официальном отчёте, несмотря на правильное основное значение.","target_language":"en","word_bank":["Lexical","register","matters","because","an","informal","phrasal","verb","may","be","unsuitable","in","a","formal","report","despite","having","the","correct","basic","meaning","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6877b11-e1e8-51bd-aaeb-70eb11320ec9', '9d3fe572-ee52-5716-ba81-addd529dc751', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"negative prefix","instruction":"Выберите подходящее слово.","options":["negative prefix","contextual clue","strong collocation"],"sentence_template":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b98a8128-d8ff-5292-83e0-1b3191bb3a4f', '9d3fe572-ee52-5716-ba81-addd529dc751', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Lexical","register","matters","because","an","informal","phrasal","verb","may","be","unsuitable","in","a","formal","report","despite","having","the","correct","basic","meaning","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","meaning","basic","correct","the","having","despite","report","formal","a","in","unsuitable","be","may","verb","phrasal","informal","an","because","matters","register","Lexical"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0c6c563-8a17-5b37-9ca0-9e1a26289e1b', '9d3fe572-ee52-5716-ba81-addd529dc751', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('488ed353-94e6-55e0-afc3-84a8caf4a381', '9d3fe572-ee52-5716-ba81-addd529dc751', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Лексический регистр важен, поскольку неформальный фразовый глагол может быть неуместен в официальном отчёте, несмотря на правильное основное значение. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c7b0fd7-e70a-5957-a92d-93eaa9179f35', '9d3fe572-ee52-5716-ba81-addd529dc751', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning.","translation":"Лексический регистр важен, поскольку неформальный фразовый глагол может быть неуместен в официальном отчёте, несмотря на правильное основное значение.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Selecting Appropriate Register"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c768485-f022-5ebd-9045-b581c0f6110c', '9d3fe572-ee52-5716-ba81-addd529dc751', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“negative prefix” means a prefix creating an opposite meaning.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D11","is_correct":true,"text":"a prefix creating an opposite meaning"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D12","is_correct":false,"text":"a preposition conventionally required by a word"},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D13","is_correct":false,"text":"the level of formality carried by vocabulary"}],"word":"negative prefix"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7cc2d07-9eb0-5ed4-bfb8-a17078a33ad4', '9d3fe572-ee52-5716-ba81-addd529dc751', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning.","explanation":"The missing B2 exam expression is “negative prefix”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"negative prefix","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D14","is_correct":true},{"audio_text":"lexical register","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D15","is_correct":false},{"audio_text":"grammatical function","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D16","is_correct":false}],"sentence_template":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ac6d7fd-3bcf-5f87-85bd-fb434c8a2c5f', '9d3fe572-ee52-5716-ba81-addd529dc751', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"negative prefix","explanation":"The complete answer uses “negative prefix” accurately.","hint_prefix":"nega","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01bc20c7-110b-58b1-ae5c-07cf097826d1', '9d3fe572-ee52-5716-ba81-addd529dc751', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strong collocation","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D17","text":"strong collocation"},{"audio_text":"word family","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D18","text":"word family"},{"audio_text":"negative prefix","id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D19","text":"negative prefix"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec0cd539-02ba-59f6-b2e2-fd93f2341fda', '9d3fe572-ee52-5716-ba81-addd529dc751', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Selecting Appropriate Register”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D20","is_correct":true,"text":"Lexical register matters because an informal phrasal verb may be unsuitable in a formal report despite having the correct basic meaning."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bbce2282-8156-5c94-835a-46774932e5f8', '9d3fe572-ee52-5716-ba81-addd529dc751', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ce123f4-239b-5c14-ac89-95c1c9450aa8', 'en', 'strong collocation', 'устойчивая сочетаемость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f3d0e3a-ccca-5147-bb53-1ddc8344e114', 'en', 'word family', 'словообразовательное гнездо', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f84449d-fbc0-5b05-a320-4c2f6977388f', 'en', 'negative prefix', 'отрицательная приставка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('610dcd45-cd46-5fec-a2d8-26542fec66f2', 'en', 'dependent preposition', 'зависимый предлог', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('acb0feb4-0b6a-51cd-bb45-c7634dd409ac', 'en', 'lexical register', 'лексический регистр', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1bd105b2-1f2d-511d-8a2a-b79c5456c7ac', 'en', 'contextual clue', 'контекстная подсказка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfa0a165-941f-545a-88f9-ceed7734dbde', 'en', 'grammatical function', 'грамматическая функция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ce123f4-239b-5c14-ac89-95c1c9450aa8', 'en', 'strong collocation', 'устойчивая сочетаемость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f3d0e3a-ccca-5147-bb53-1ddc8344e114', 'en', 'word family', 'словообразовательное гнездо', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f84449d-fbc0-5b05-a320-4c2f6977388f', 'en', 'negative prefix', 'отрицательная приставка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('610dcd45-cd46-5fec-a2d8-26542fec66f2', 'en', 'dependent preposition', 'зависимый предлог', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('acb0feb4-0b6a-51cd-bb45-c7634dd409ac', 'en', 'lexical register', 'лексический регистр', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1bd105b2-1f2d-511d-8a2a-b79c5456c7ac', 'en', 'contextual clue', 'контекстная подсказка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfa0a165-941f-545a-88f9-ceed7734dbde', 'en', 'grammatical function', 'грамматическая функция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ce123f4-239b-5c14-ac89-95c1c9450aa8', 'en', 'strong collocation', 'устойчивая сочетаемость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f3d0e3a-ccca-5147-bb53-1ddc8344e114', 'en', 'word family', 'словообразовательное гнездо', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f84449d-fbc0-5b05-a320-4c2f6977388f', 'en', 'negative prefix', 'отрицательная приставка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('610dcd45-cd46-5fec-a2d8-26542fec66f2', 'en', 'dependent preposition', 'зависимый предлог', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('acb0feb4-0b6a-51cd-bb45-c7634dd409ac', 'en', 'lexical register', 'лексический регистр', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1bd105b2-1f2d-511d-8a2a-b79c5456c7ac', 'en', 'contextual clue', 'контекстная подсказка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfa0a165-941f-545a-88f9-ceed7734dbde', 'en', 'grammatical function', 'грамматическая функция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '990adc8d-a839-58f2-a0f7-3789df988e95', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'strong collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '990adc8d-a839-58f2-a0f7-3789df988e95', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'word family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '990adc8d-a839-58f2-a0f7-3789df988e95', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative prefix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '990adc8d-a839-58f2-a0f7-3789df988e95', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'dependent preposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '990adc8d-a839-58f2-a0f7-3789df988e95', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '990adc8d-a839-58f2-a0f7-3789df988e95', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '990adc8d-a839-58f2-a0f7-3789df988e95', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'grammatical function' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'strong collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'word family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative prefix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'dependent preposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, 'a783fdea-79ea-5be0-abf1-b1929e68e7f8', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'grammatical function' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '9d3fe572-ee52-5716-ba81-addd529dc751', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'strong collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '9d3fe572-ee52-5716-ba81-addd529dc751', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'word family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '9d3fe572-ee52-5716-ba81-addd529dc751', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative prefix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '9d3fe572-ee52-5716-ba81-addd529dc751', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'dependent preposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '9d3fe572-ee52-5716-ba81-addd529dc751', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '9d3fe572-ee52-5716-ba81-addd529dc751', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'contextual clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bbce2282-8156-5c94-835a-46774932e5f8', id, '9d3fe572-ee52-5716-ba81-addd529dc751', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'grammatical function' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
