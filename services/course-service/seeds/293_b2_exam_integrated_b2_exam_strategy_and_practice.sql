-- Track: B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2f55f038-6b5a-51b4-9702-2ee1bdc26703', 'B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE', 'Комплексные стратегии и практика экзамена B2', 'Развивайте экзаменационные навыки уровня B2 по теме «Комплексные стратегии и практика экзамена B2», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Integrated B2 Exam Strategy and Practice","ru":"Комплексные стратегии и практика экзамена B2"}'::jsonb, '{"en":"Develop B2 exam skills for integrated b2 exam strategy and practice by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Комплексные стратегии и практика экзамена B2», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a744fa68-99a3-5b7b-a11b-8c44d7db37eb', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Managing Time and Evidence","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca6b098d-0702-5740-9be1-70576a91e439', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D01","left":"task requirement","right":"требование задания"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D02","left":"evidence location","right":"место доказательства"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D03","left":"distractor","right":"отвлекающий вариант"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D04","left":"time allocation","right":"распределение времени"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D05","left":"accuracy check","right":"проверка точности"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D06","left":"educated guess","right":"обоснованная догадка"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D07","left":"response strategy","right":"стратегия ответа"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fc1e2c7-0811-566e-995b-9c6020bc76a0', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D08","is_correct":true,"text":"A response strategy begins with identifying the task requirement, expected output, and evidence needed before selecting an answer."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25bac4d9-482c-576e-b90f-e413d556ea49', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A response strategy begins with identifying the task requirement, expected output, and evidence needed before selecting an answer.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Стратегия ответа начинается с определения требования задания, ожидаемого результата и необходимых доказательств до выбора ответа.","target_language":"en","word_bank":["A","response","strategy","begins","with","identifying","the","task","requirement",",","expected","output",",","and","evidence","needed","before","selecting","an","answer","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('126645b0-41e1-5e5a-94bc-beefcdadac43', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"task requirement","instruction":"Выберите подходящее слово.","options":["task requirement","time allocation","educated guess"],"sentence_template":"A response strategy begins with identifying the ___, expected output, and evidence needed before selecting an answer."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f39ec3de-4967-5552-ac1f-92c1ae09d9ce', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","response","strategy","begins","with","identifying","the","task","requirement",",","expected","output",",","and","evidence","needed","before","selecting","an","answer","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","answer","an","selecting","before","needed","evidence","and",",","output","expected",",","requirement","task","the","identifying","with","begins","strategy","response","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d767c87-e7e8-5140-a02a-bdacbfcd3aff', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A response strategy begins with identifying the task requirement, expected output, and evidence needed before selecting an answer. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('419038ba-ad23-5e9b-bc48-57940745ce38', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A response strategy begins with identifying the task requirement, expected output, and evidence needed before selecting an answer. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Стратегия ответа начинается с определения требования задания, ожидаемого результата и необходимых доказательств до выбора ответа. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e183c98c-f0e6-5645-8a69-e4398a142ff8', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A response strategy begins with identifying the task requirement, expected output, and evidence needed before selecting an answer.","translation":"Стратегия ответа начинается с определения требования задания, ожидаемого результата и необходимых доказательств до выбора ответа.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Managing Time and Evidence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('937f7f04-cd83-55f5-8475-7a7564aaac15', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“task requirement” means an instruction defining what a response must do.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D11","is_correct":true,"text":"an instruction defining what a response must do"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D12","is_correct":false,"text":"the exact part of a text or recording supporting an answer"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D13","is_correct":false,"text":"an incorrect option designed to appear plausible"}],"word":"task requirement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e021b1a-b45e-5657-bcb4-01bf37bd71c7', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A response strategy begins with identifying the task requirement, expected output, and evidence needed before selecting an answer.","explanation":"The missing B2 exam expression is “task requirement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"task requirement","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D14","is_correct":true},{"audio_text":"distractor","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D15","is_correct":false},{"audio_text":"accuracy check","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D16","is_correct":false}],"sentence_template":"A response strategy begins with identifying the ___, expected output, and evidence needed before selecting an answer."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e7ee1fe-d1c9-5e9d-9224-a0f56fd46f56', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"task requirement","explanation":"The complete answer uses “task requirement” accurately.","hint_prefix":"task","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A response strategy begins with identifying the ___, expected output, and evidence needed before selecting an answer."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75ec9f14-66a5-522a-90bd-6912363b1136', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task requirement","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D17","text":"task requirement"},{"audio_text":"evidence location","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D18","text":"evidence location"},{"audio_text":"distractor","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D19","text":"distractor"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('112d317a-0bf1-5ac7-96c9-228943dd8c07', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Managing Time and Evidence”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D20","is_correct":true,"text":"A response strategy begins with identifying the task requirement, expected output, and evidence needed before selecting an answer."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2f55f038-6b5a-51b4-9702-2ee1bdc26703', 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Checking Complex Responses","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ee7557e-c66e-5e37-bf7f-9793aee1b3d9', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D01","left":"task requirement","right":"требование задания"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D02","left":"evidence location","right":"место доказательства"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D03","left":"distractor","right":"отвлекающий вариант"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D04","left":"time allocation","right":"распределение времени"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D05","left":"accuracy check","right":"проверка точности"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D06","left":"educated guess","right":"обоснованная догадка"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D07","left":"response strategy","right":"стратегия ответа"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4f8a60b-f25e-5631-9dd8-4e02c209fc19', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D08","is_correct":true,"text":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e8f8018-9cad-5ce9-abaf-6d273ff3318a', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда два варианта кажутся правдоподобными, найдите точное доказательство и проверьте, не является ли один из них отвлекающим вариантом, повторяющим знакомые слова.","target_language":"en","word_bank":["When","two","options","seem","plausible",",","locate","the","precise","evidence","and","test","whether","one","choice","is","merely","a","distractor","repeating","familiar","words","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08ee0769-e4db-58b5-8939-c768dc6af1aa', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"evidence location","instruction":"Выберите подходящее слово.","options":["evidence location","accuracy check","response strategy"],"sentence_template":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c73c4b23-dbe1-5f72-8655-76c4a494f4c6', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","two","options","seem","plausible",",","locate","the","precise","evidence","and","test","whether","one","choice","is","merely","a","distractor","repeating","familiar","words","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","words","familiar","repeating","distractor","a","merely","is","choice","one","whether","test","and","evidence","precise","the","locate",",","plausible","seem","options","two","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08c8a9cc-7f5c-5762-a88a-52bcd7b9a47a', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('106270c8-794b-560e-b5af-c695fd4d5719', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Когда два варианта кажутся правдоподобными, найдите точное доказательство и проверьте, не является ли один из них отвлекающим вариантом, повторяющим знакомые слова. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07aebd6d-b0d5-5f58-aee3-5102317c0b4a', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words.","translation":"Когда два варианта кажутся правдоподобными, найдите точное доказательство и проверьте, не является ли один из них отвлекающим вариантом, повторяющим знакомые слова.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Checking Complex Responses"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86caaa48-0556-56ec-81ca-5facd557bd46', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“evidence location” means the exact part of a text or recording supporting an answer.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D11","is_correct":true,"text":"the exact part of a text or recording supporting an answer"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D12","is_correct":false,"text":"an incorrect option designed to appear plausible"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D13","is_correct":false,"text":"planned division of available exam time"}],"word":"evidence location"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('201758bd-83bf-5623-8cd1-4a23a2d62836', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words.","explanation":"The missing B2 exam expression is “evidence location”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"evidence location","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D14","is_correct":true},{"audio_text":"time allocation","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D15","is_correct":false},{"audio_text":"educated guess","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D16","is_correct":false}],"sentence_template":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ee885f4-0164-5e2f-a803-62044f0242cf', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"evidence location","explanation":"The complete answer uses “evidence location” accurately.","hint_prefix":"evid","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0092577-d0ad-5d4e-9aee-978fa4b1b428', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task requirement","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D17","text":"task requirement"},{"audio_text":"evidence location","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D18","text":"evidence location"},{"audio_text":"distractor","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D19","text":"distractor"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79bbeeaa-d9e4-5ed9-98b8-bb2e9e8c9b38', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Checking Complex Responses”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D20","is_correct":true,"text":"When two options seem plausible, locate the precise evidence and test whether one choice is merely a distractor repeating familiar words."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2f55f038-6b5a-51b4-9702-2ee1bdc26703', 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4881aa6c-76de-5670-8993-9a435c4e32a1', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Completing Integrated Practice","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('494c8368-f2bc-5942-a4ab-d5764857ac0d', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D01","left":"task requirement","right":"требование задания"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D02","left":"evidence location","right":"место доказательства"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D03","left":"distractor","right":"отвлекающий вариант"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D04","left":"time allocation","right":"распределение времени"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D05","left":"accuracy check","right":"проверка точности"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D06","left":"educated guess","right":"обоснованная догадка"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D07","left":"response strategy","right":"стратегия ответа"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57cb1313-1f9b-599b-91e9-2664e6aa442d', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D08","is_correct":true,"text":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b28bc3a9-b2a4-5468-a1d3-d8e248b67fb8', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эффективное распределение времени оставляет место для итоговой проверки точности и допускает обоснованную догадку, если сложное задание угрожает остальной части экзамена.","target_language":"en","word_bank":["Effective","time","allocation","reserves","a","final","accuracy","check","while","allowing","an","educated","guess","when","a","difficult","item","threatens","the","remaining","paper","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f5d6466-2e18-5549-835b-7f62fa5026fe', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"distractor","instruction":"Выберите подходящее слово.","options":["distractor","educated guess","task requirement"],"sentence_template":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10ca92cc-3dd3-5337-b6e2-64ad87e977ea', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Effective","time","allocation","reserves","a","final","accuracy","check","while","allowing","an","educated","guess","when","a","difficult","item","threatens","the","remaining","paper","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","paper","remaining","the","threatens","item","difficult","a","when","guess","educated","an","allowing","while","check","accuracy","final","a","reserves","allocation","time","Effective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7f53724-12f9-510c-bfe0-18f9277f9ac7', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bda39a53-ceb1-5153-9654-b229608e405e', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Эффективное распределение времени оставляет место для итоговой проверки точности и допускает обоснованную догадку, если сложное задание угрожает остальной части экзамена. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e97a5c7c-2ec0-5d43-9157-f09a1ca8e78a', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper.","translation":"Эффективное распределение времени оставляет место для итоговой проверки точности и допускает обоснованную догадку, если сложное задание угрожает остальной части экзамена.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Completing Integrated Practice"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('794ac1fb-4022-5915-a8e3-2f312c935309', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“distractor” means an incorrect option designed to appear plausible.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D11","is_correct":true,"text":"an incorrect option designed to appear plausible"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D12","is_correct":false,"text":"planned division of available exam time"},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D13","is_correct":false,"text":"a review for language or task errors"}],"word":"distractor"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b606409b-2a81-5dea-b1cb-4e6904d194cd', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper.","explanation":"The missing B2 exam expression is “distractor”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"distractor","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D14","is_correct":true},{"audio_text":"accuracy check","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D15","is_correct":false},{"audio_text":"response strategy","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D16","is_correct":false}],"sentence_template":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('533756fc-d7bb-5e71-bf4e-9039242aad98', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"distractor","explanation":"The complete answer uses “distractor” accurately.","hint_prefix":"dist","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebba8229-0d00-5383-b853-f32ed64f4468', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task requirement","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D17","text":"task requirement"},{"audio_text":"evidence location","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D18","text":"evidence location"},{"audio_text":"distractor","id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D19","text":"distractor"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c720a75-88ae-5a8a-bcd2-50152301e64f', '4881aa6c-76de-5670-8993-9a435c4e32a1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Completing Integrated Practice”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D20","is_correct":true,"text":"Effective time allocation reserves a final accuracy check while allowing an educated guess when a difficult item threatens the remaining paper."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_INTEGRATED_B2_EXAM_STRATEGY_AND_PRACTICE_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2f55f038-6b5a-51b4-9702-2ee1bdc26703', '4881aa6c-76de-5670-8993-9a435c4e32a1', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('edbe6537-8ee9-5f6d-bd72-c8775b4795d4', 'en', 'task requirement', 'требование задания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49d92f42-b0d2-5e14-a6d7-1d7e9bed04e1', 'en', 'evidence location', 'место доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cafb8bb-dd4d-5f25-95e1-aa1fc46aca56', 'en', 'distractor', 'отвлекающий вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d688e7b1-a262-5648-b39e-7fbfd7b69ef3', 'en', 'time allocation', 'распределение времени', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c159e03-3d8a-51fb-83ad-e65ac35056db', 'en', 'accuracy check', 'проверка точности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f18d0304-e668-5a93-879b-35c482dd96b4', 'en', 'educated guess', 'обоснованная догадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa809373-c649-594b-9dcc-dfcd6a123d48', 'en', 'response strategy', 'стратегия ответа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('edbe6537-8ee9-5f6d-bd72-c8775b4795d4', 'en', 'task requirement', 'требование задания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49d92f42-b0d2-5e14-a6d7-1d7e9bed04e1', 'en', 'evidence location', 'место доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cafb8bb-dd4d-5f25-95e1-aa1fc46aca56', 'en', 'distractor', 'отвлекающий вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d688e7b1-a262-5648-b39e-7fbfd7b69ef3', 'en', 'time allocation', 'распределение времени', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c159e03-3d8a-51fb-83ad-e65ac35056db', 'en', 'accuracy check', 'проверка точности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f18d0304-e668-5a93-879b-35c482dd96b4', 'en', 'educated guess', 'обоснованная догадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa809373-c649-594b-9dcc-dfcd6a123d48', 'en', 'response strategy', 'стратегия ответа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('edbe6537-8ee9-5f6d-bd72-c8775b4795d4', 'en', 'task requirement', 'требование задания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49d92f42-b0d2-5e14-a6d7-1d7e9bed04e1', 'en', 'evidence location', 'место доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cafb8bb-dd4d-5f25-95e1-aa1fc46aca56', 'en', 'distractor', 'отвлекающий вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d688e7b1-a262-5648-b39e-7fbfd7b69ef3', 'en', 'time allocation', 'распределение времени', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c159e03-3d8a-51fb-83ad-e65ac35056db', 'en', 'accuracy check', 'проверка точности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f18d0304-e668-5a93-879b-35c482dd96b4', 'en', 'educated guess', 'обоснованная догадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa809373-c649-594b-9dcc-dfcd6a123d48', 'en', 'response strategy', 'стратегия ответа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'task requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence location' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'time allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'accuracy check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'educated guess' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'a744fa68-99a3-5b7b-a11b-8c44d7db37eb', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'response strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'task requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence location' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'time allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'accuracy check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'educated guess' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, 'ba44d0ff-86c3-5f3e-ac0b-4e2d574bcb0d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'response strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, '4881aa6c-76de-5670-8993-9a435c4e32a1', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'task requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, '4881aa6c-76de-5670-8993-9a435c4e32a1', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence location' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, '4881aa6c-76de-5670-8993-9a435c4e32a1', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, '4881aa6c-76de-5670-8993-9a435c4e32a1', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'time allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, '4881aa6c-76de-5670-8993-9a435c4e32a1', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'accuracy check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, '4881aa6c-76de-5670-8993-9a435c4e32a1', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'educated guess' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2f55f038-6b5a-51b4-9702-2ee1bdc26703', id, '4881aa6c-76de-5670-8993-9a435c4e32a1', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'response strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
