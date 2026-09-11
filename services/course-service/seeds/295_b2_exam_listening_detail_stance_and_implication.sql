-- Track: B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ac42ccd6-eb7f-5889-9736-a58637083987', 'B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION', 'Детали аудирования, позиция и скрытый смысл', 'Развивайте экзаменационные навыки уровня B2 по теме «Детали аудирования, позиция и скрытый смысл», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Listening Detail, Stance and Implication","ru":"Детали аудирования, позиция и скрытый смысл"}'::jsonb, '{"en":"Develop B2 exam skills for listening detail, stance and implication by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Детали аудирования, позиция и скрытый смысл», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e1e78efe-e26e-58c3-a3bb-88755315e6fa', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Tracking Detailed Information","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cdb8017-c01c-5fd9-a7e0-acf224d292fb', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D01","left":"speaker stance","right":"позиция говорящего"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D02","left":"reservation","right":"оговорка или сомнение"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D03","left":"implied criticism","right":"скрытая критика"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D04","left":"contrastive stress","right":"контрастное ударение"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D05","left":"self-correction","right":"самоисправление"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D06","left":"supporting detail","right":"подтверждающая деталь"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D07","left":"tentative agreement","right":"предварительное согласие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('334f8fd9-a911-520b-b4fd-d5e0debb2183', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D08","is_correct":true,"text":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5be39ec-452f-5482-821a-9da77d21b43e', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Подтверждающая деталь касается пересмотренного срока, тогда как сумма бюджета упоминается лишь как фоновая информация.","target_language":"en","word_bank":["The","supporting","detail","concerns","the","revised","deadline",",","whereas","the","budget","figure","is","mentioned","only","as","background","context","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('484bf2cd-0090-5679-be05-47eb6ed41034', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"speaker stance","instruction":"Выберите подходящее слово.","options":["speaker stance","contrastive stress","supporting detail"],"sentence_template":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bd01a24-b40d-53a6-b891-44510092dfd3', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","supporting","detail","concerns","the","revised","deadline",",","whereas","the","budget","figure","is","mentioned","only","as","background","context","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","context","background","as","only","mentioned","is","figure","budget","the","whereas",",","deadline","revised","the","concerns","detail","supporting","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bcb60b4-b4cd-51a6-97d7-4d40b4bd6d42', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbf1951a-e543-5b8b-bb7b-1cb9e22b9d32', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Подтверждающая деталь касается пересмотренного срока, тогда как сумма бюджета упоминается лишь как фоновая информация. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84da41b8-7d31-5201-be04-3b64ee07abf4', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context.","translation":"Подтверждающая деталь касается пересмотренного срока, тогда как сумма бюджета упоминается лишь как фоновая информация.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Tracking Detailed Information"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('986352d0-8de8-5bc1-9b4e-e088811412bf', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“speaker stance” means the speaker’s attitude toward an issue.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D11","is_correct":true,"text":"the speaker’s attitude toward an issue"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D12","is_correct":false,"text":"a concern preventing complete agreement"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D13","is_correct":false,"text":"negative judgement communicated indirectly"}],"word":"speaker stance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9aa1630-0ee2-5e62-86c2-c73aac6caec6', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context.","explanation":"The missing B2 exam expression is “speaker stance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"speaker stance","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D14","is_correct":true},{"audio_text":"implied criticism","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D15","is_correct":false},{"audio_text":"self-correction","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D16","is_correct":false}],"sentence_template":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('009ea57d-7fa3-5948-ac8e-350a6e78af36', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"speaker stance","explanation":"The complete answer uses “speaker stance” accurately.","hint_prefix":"spea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b043a9c-6e65-52a7-bf05-ddfaf42b5571', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"speaker stance","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D17","text":"speaker stance"},{"audio_text":"reservation","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D18","text":"reservation"},{"audio_text":"implied criticism","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D19","text":"implied criticism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('501186a9-c79f-5a5b-a9f5-e4b41dd5edd6', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Tracking Detailed Information”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D20","is_correct":true,"text":"The supporting detail concerns the revised deadline, whereas the budget figure is mentioned only as background context."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ac42ccd6-eb7f-5889-9736-a58637083987', 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Recognising Speaker Stance","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de98f8c4-c3d9-5457-a1d8-e554b223c7fc', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D01","left":"speaker stance","right":"позиция говорящего"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D02","left":"reservation","right":"оговорка или сомнение"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D03","left":"implied criticism","right":"скрытая критика"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D04","left":"contrastive stress","right":"контрастное ударение"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D05","left":"self-correction","right":"самоисправление"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D06","left":"supporting detail","right":"подтверждающая деталь"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D07","left":"tentative agreement","right":"предварительное согласие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7c03df9-67b7-5598-9f27-19d652bf6f07', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D08","is_correct":true,"text":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant reservation."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72fa5647-97ab-5780-87e4-3f2610d72065', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant reservation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Позиция говорящей осторожно поддерживающая, хотя пауза и самоисправление выявляют существенное сомнение.","target_language":"en","word_bank":["Her","speaker","stance","is","cautiously","supportive",",","although","a","pause","and","self-correction","reveal","a","significant","reservation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d76560b2-06ee-5bdc-ad1c-bef0331552d0', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reservation","instruction":"Выберите подходящее слово.","options":["reservation","self-correction","tentative agreement"],"sentence_template":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f19601d-0a0a-5266-8a80-11c09bae76cc', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Her","speaker","stance","is","cautiously","supportive",",","although","a","pause","and","self-correction","reveal","a","significant","reservation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","reservation","significant","a","reveal","self-correction","and","pause","a","although",",","supportive","cautiously","is","stance","speaker","Her"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22d1329a-aa35-55e3-b065-649a4642c5dd', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant reservation. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da7855b2-e52c-5d9e-a9bb-df1a426a2145', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant reservation. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Позиция говорящей осторожно поддерживающая, хотя пауза и самоисправление выявляют существенное сомнение. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6de3e50-8805-5f9e-b6f7-f7bd6632f9bb', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant reservation.","translation":"Позиция говорящей осторожно поддерживающая, хотя пауза и самоисправление выявляют существенное сомнение.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Recognising Speaker Stance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4319685-e687-5ecf-b2a8-a64ab671e7e9', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reservation” means a concern preventing complete agreement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D11","is_correct":true,"text":"a concern preventing complete agreement"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D12","is_correct":false,"text":"negative judgement communicated indirectly"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D13","is_correct":false,"text":"emphasis correcting or opposing information"}],"word":"reservation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a87d8db4-da2c-5fe5-8547-659578f5662e', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant reservation.","explanation":"The missing B2 exam expression is “reservation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reservation","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D14","is_correct":true},{"audio_text":"contrastive stress","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D15","is_correct":false},{"audio_text":"supporting detail","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D16","is_correct":false}],"sentence_template":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bd25bf1-a932-516d-b7ec-9bd8fdc494bf', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reservation","explanation":"The complete answer uses “reservation” accurately.","hint_prefix":"rese","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8d4cf1f-8c2f-573c-ba78-20da897aa635', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"speaker stance","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D17","text":"speaker stance"},{"audio_text":"reservation","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D18","text":"reservation"},{"audio_text":"implied criticism","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D19","text":"implied criticism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c02bb0b2-255f-5e8c-a8bc-55cc91e1e8ce', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Recognising Speaker Stance”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D20","is_correct":true,"text":"Her speaker stance is cautiously supportive, although a pause and self-correction reveal a significant reservation."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ac42ccd6-eb7f-5889-9736-a58637083987', '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7ac895fe-44c8-5671-98bf-88d75e7b539b', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Interpreting Implication","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9d73c9c-e940-53c7-b3c5-e8c199b745f8', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D01","left":"speaker stance","right":"позиция говорящего"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D02","left":"reservation","right":"оговорка или сомнение"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D03","left":"implied criticism","right":"скрытая критика"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D04","left":"contrastive stress","right":"контрастное ударение"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D05","left":"self-correction","right":"самоисправление"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D06","left":"supporting detail","right":"подтверждающая деталь"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D07","left":"tentative agreement","right":"предварительное согласие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc688e0c-146e-5a20-b889-34e7358ace91', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D08","is_correct":true,"text":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('594f051d-20e5-5d94-bad0-023ebf843dbe', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Контрастное ударение подразумевает критику способа реализации решения, а не самого решения.","target_language":"en","word_bank":["The","contrastive","stress","implies","criticism","of","how","the","decision","was","implemented","rather","than","of","the","decision","itself","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40d7c9be-e043-5316-9806-dc5a4c0166ae', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"implied criticism","instruction":"Выберите подходящее слово.","options":["implied criticism","supporting detail","speaker stance"],"sentence_template":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3069ccb2-86f3-5fd5-a0aa-de442f5b6cff', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","contrastive","stress","implies","criticism","of","how","the","decision","was","implemented","rather","than","of","the","decision","itself","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","itself","decision","the","of","than","rather","implemented","was","decision","the","how","of","criticism","implies","stress","contrastive","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47ec373f-95c4-59a0-aded-4699f8723864', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20de0cc8-f2ac-523b-aa33-6bc7fec84f5a', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Контрастное ударение подразумевает критику способа реализации решения, а не самого решения. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e138075f-5f99-5ffb-bacb-f0ff70df0e48', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself.","translation":"Контрастное ударение подразумевает критику способа реализации решения, а не самого решения.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Interpreting Implication"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db200878-955f-57d9-a3c1-b187c6aa7590', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“implied criticism” means negative judgement communicated indirectly.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D11","is_correct":true,"text":"negative judgement communicated indirectly"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D12","is_correct":false,"text":"emphasis correcting or opposing information"},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D13","is_correct":false,"text":"a speaker’s revision of their own words"}],"word":"implied criticism"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5d7146f-8f04-5442-b4a8-b1e6ef10547b', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself.","explanation":"The missing B2 exam expression is “implied criticism”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"implied criticism","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D14","is_correct":true},{"audio_text":"self-correction","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D15","is_correct":false},{"audio_text":"tentative agreement","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D16","is_correct":false}],"sentence_template":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc5bd9c1-13dc-5e39-8496-d5d527517111', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"implied criticism","explanation":"The complete answer uses “implied criticism” accurately.","hint_prefix":"impl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f64ab6a5-b759-52a5-8a57-f6ff5b4859b2', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"speaker stance","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D17","text":"speaker stance"},{"audio_text":"reservation","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D18","text":"reservation"},{"audio_text":"implied criticism","id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D19","text":"implied criticism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c00c17e7-0765-5d62-a6ba-99e336464c97', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Interpreting Implication”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D20","is_correct":true,"text":"The contrastive stress implies criticism of how the decision was implemented rather than of the decision itself."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_LISTENING_DETAIL_STANCE_AND_IMPLICATION_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ac42ccd6-eb7f-5889-9736-a58637083987', '7ac895fe-44c8-5671-98bf-88d75e7b539b', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87b45f9b-2b3a-526c-896c-96715d593e2e', 'en', 'speaker stance', 'позиция говорящего', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'оговорка или сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ade4402f-9fb6-5d5a-8b94-e28e01e0d090', 'en', 'implied criticism', 'скрытая критика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f77d8d5e-c40e-5826-936e-cd0524af745d', 'en', 'contrastive stress', 'контрастное ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67acc0f3-4465-5aa9-bc85-6bdff369d265', 'en', 'self-correction', 'самоисправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bea47b-5f67-5721-bd2f-5744b309e4a8', 'en', 'supporting detail', 'подтверждающая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное согласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87b45f9b-2b3a-526c-896c-96715d593e2e', 'en', 'speaker stance', 'позиция говорящего', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'оговорка или сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ade4402f-9fb6-5d5a-8b94-e28e01e0d090', 'en', 'implied criticism', 'скрытая критика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f77d8d5e-c40e-5826-936e-cd0524af745d', 'en', 'contrastive stress', 'контрастное ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67acc0f3-4465-5aa9-bc85-6bdff369d265', 'en', 'self-correction', 'самоисправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bea47b-5f67-5721-bd2f-5744b309e4a8', 'en', 'supporting detail', 'подтверждающая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное согласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87b45f9b-2b3a-526c-896c-96715d593e2e', 'en', 'speaker stance', 'позиция говорящего', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'оговорка или сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ade4402f-9fb6-5d5a-8b94-e28e01e0d090', 'en', 'implied criticism', 'скрытая критика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f77d8d5e-c40e-5826-936e-cd0524af745d', 'en', 'contrastive stress', 'контрастное ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67acc0f3-4465-5aa9-bc85-6bdff369d265', 'en', 'self-correction', 'самоисправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bea47b-5f67-5721-bd2f-5744b309e4a8', 'en', 'supporting detail', 'подтверждающая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное согласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'speaker stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'implied criticism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrastive stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, 'e1e78efe-e26e-58c3-a3bb-88755315e6fa', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'speaker stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'implied criticism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrastive stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '9cb325ce-aa95-5aa6-bb0a-cbaaaa8f22d8', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '7ac895fe-44c8-5671-98bf-88d75e7b539b', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'speaker stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '7ac895fe-44c8-5671-98bf-88d75e7b539b', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '7ac895fe-44c8-5671-98bf-88d75e7b539b', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'implied criticism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '7ac895fe-44c8-5671-98bf-88d75e7b539b', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrastive stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '7ac895fe-44c8-5671-98bf-88d75e7b539b', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '7ac895fe-44c8-5671-98bf-88d75e7b539b', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac42ccd6-eb7f-5889-9736-a58637083987', id, '7ac895fe-44c8-5671-98bf-88d75e7b539b', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
