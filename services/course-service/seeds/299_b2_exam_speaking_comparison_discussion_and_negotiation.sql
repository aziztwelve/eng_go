-- Track: B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', 'B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION', 'Сравнение, обсуждение и согласование в устной части', 'Развивайте экзаменационные навыки уровня B2 по теме «Сравнение, обсуждение и согласование в устной части», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Speaking Comparison, Discussion and Negotiation","ru":"Сравнение, обсуждение и согласование в устной части"}'::jsonb, '{"en":"Develop B2 exam skills for speaking comparison, discussion and negotiation by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Сравнение, обсуждение и согласование в устной части», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5d5470e2-a715-51d5-adc1-ba684482533c', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Comparing and Speculating","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a59e8f6a-96c3-540f-bd6f-f8d30542db23', '5d5470e2-a715-51d5-adc1-ba684482533c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D01","left":"speculative comparison","right":"предположительное сравнение"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D02","left":"sustain a long turn","right":"поддерживать развёрнутый ответ"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D03","left":"invite a response","right":"предложить высказаться"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D04","left":"develop a point","right":"развить мысль"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D05","left":"polite disagreement","right":"вежливое несогласие"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D06","left":"negotiated outcome","right":"согласованный результат"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D07","left":"justify a choice","right":"обосновать выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('861a7866-14e8-560e-afd2-454af5856912', '5d5470e2-a715-51d5-adc1-ba684482533c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D08","is_correct":true,"text":"A speculative comparison should address both images and explain what the visible details might suggest rather than merely list objects."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0155173f-74ea-57ad-aa1e-90fb4ec4b215', '5d5470e2-a715-51d5-adc1-ba684482533c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A speculative comparison should address both images and explain what the visible details might suggest rather than merely list objects.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предположительное сравнение должно охватывать оба изображения и объяснять возможный смысл видимых деталей, а не просто перечислять предметы.","target_language":"en","word_bank":["A","speculative","comparison","should","address","both","images","and","explain","what","the","visible","details","might","suggest","rather","than","merely","list","objects","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e11ad38-4b08-553e-a734-3c95ec9ea4a9', '5d5470e2-a715-51d5-adc1-ba684482533c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"speculative comparison","instruction":"Выберите подходящее слово.","options":["speculative comparison","develop a point","negotiated outcome"],"sentence_template":"A ___ should address both images and explain what the visible details might suggest rather than merely list objects."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22c7b8cd-8769-5c28-a9b1-b44232dba8ed', '5d5470e2-a715-51d5-adc1-ba684482533c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","speculative","comparison","should","address","both","images","and","explain","what","the","visible","details","might","suggest","rather","than","merely","list","objects","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","objects","list","merely","than","rather","suggest","might","details","visible","the","what","explain","and","images","both","address","should","comparison","speculative","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb778523-d99a-5477-bf5f-39f35e07e85b', '5d5470e2-a715-51d5-adc1-ba684482533c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A speculative comparison should address both images and explain what the visible details might suggest rather than merely list objects. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2bbbdfb-0bcc-5a10-9311-5fbffd818bdc', '5d5470e2-a715-51d5-adc1-ba684482533c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A speculative comparison should address both images and explain what the visible details might suggest rather than merely list objects. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Предположительное сравнение должно охватывать оба изображения и объяснять возможный смысл видимых деталей, а не просто перечислять предметы. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f31d7f31-26bd-5aa1-a586-e45b2ef8b8a0', '5d5470e2-a715-51d5-adc1-ba684482533c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A speculative comparison should address both images and explain what the visible details might suggest rather than merely list objects.","translation":"Предположительное сравнение должно охватывать оба изображения и объяснять возможный смысл видимых деталей, а не просто перечислять предметы.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Comparing and Speculating"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81df6fdd-7373-5672-b3dc-5267bc16581d', '5d5470e2-a715-51d5-adc1-ba684482533c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“speculative comparison” means a comparison involving uncertain interpretation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D11","is_correct":true,"text":"a comparison involving uncertain interpretation"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D12","is_correct":false,"text":"speak coherently for an extended period"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D13","is_correct":false,"text":"encourage another person to contribute"}],"word":"speculative comparison"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25cbc4ff-eed9-5f2c-ac25-3a0b82736d5b', '5d5470e2-a715-51d5-adc1-ba684482533c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A speculative comparison should address both images and explain what the visible details might suggest rather than merely list objects.","explanation":"The missing B2 exam expression is “speculative comparison”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"speculative comparison","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D14","is_correct":true},{"audio_text":"invite a response","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D15","is_correct":false},{"audio_text":"polite disagreement","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D16","is_correct":false}],"sentence_template":"A ___ should address both images and explain what the visible details might suggest rather than merely list objects."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9b98d60-9009-5160-b6be-827070df6114', '5d5470e2-a715-51d5-adc1-ba684482533c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"speculative comparison","explanation":"The complete answer uses “speculative comparison” accurately.","hint_prefix":"spec","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should address both images and explain what the visible details might suggest rather than merely list objects."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce8c46bf-2c55-5e63-aade-f1687bf85078', '5d5470e2-a715-51d5-adc1-ba684482533c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"speculative comparison","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D17","text":"speculative comparison"},{"audio_text":"sustain a long turn","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D18","text":"sustain a long turn"},{"audio_text":"invite a response","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D19","text":"invite a response"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79de275c-44a8-5f95-9335-570924ceb91b', '5d5470e2-a715-51d5-adc1-ba684482533c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Comparing and Speculating”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D20","is_correct":true,"text":"A speculative comparison should address both images and explain what the visible details might suggest rather than merely list objects."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', '5d5470e2-a715-51d5-adc1-ba684482533c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d1210008-4de9-589e-b2fe-b0f70a5ee70d', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Developing Interactive Answers","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ff88ddf-a04a-5690-8d59-ec419e829ad7', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D01","left":"speculative comparison","right":"предположительное сравнение"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D02","left":"sustain a long turn","right":"поддерживать развёрнутый ответ"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D03","left":"invite a response","right":"предложить высказаться"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D04","left":"develop a point","right":"развить мысль"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D05","left":"polite disagreement","right":"вежливое несогласие"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D06","left":"negotiated outcome","right":"согласованный результат"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D07","left":"justify a choice","right":"обосновать выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecda9f84-7692-5016-a675-ec20fcf6fc1c', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D08","is_correct":true,"text":"To sustain a long turn, develop each point with a reason, example, consequence, or carefully qualified contrast."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8978765-e744-5a23-a28a-e938acdaae4f', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To sustain a long turn, develop each point with a reason, example, consequence, or carefully qualified contrast.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы поддерживать развёрнутый ответ, развивайте каждую мысль причиной, примером, последствием или осторожно сформулированным противопоставлением.","target_language":"en","word_bank":["To","sustain","a","long","turn",",","develop","each","point","with","a","reason",",","example",",","consequence",",","or","carefully","qualified","contrast","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bcd91ef-8cc2-5cd3-be1d-093d273978c0', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sustain a long turn","instruction":"Выберите подходящее слово.","options":["sustain a long turn","polite disagreement","justify a choice"],"sentence_template":"To ___, develop each point with a reason, example, consequence, or carefully qualified contrast."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c13bf58-b5c4-587b-a549-c64f6dfe378a', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","sustain","a","long","turn",",","develop","each","point","with","a","reason",",","example",",","consequence",",","or","carefully","qualified","contrast","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","contrast","qualified","carefully","or",",","consequence",",","example",",","reason","a","with","point","each","develop",",","turn","long","a","sustain","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8a19d3e-b3f6-5f7c-b604-9ad556695da2', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To sustain a long turn, develop each point with a reason, example, consequence, or carefully qualified contrast. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55ffa725-96c3-56c3-8675-6ace926456f8', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To sustain a long turn, develop each point with a reason, example, consequence, or carefully qualified contrast. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чтобы поддерживать развёрнутый ответ, развивайте каждую мысль причиной, примером, последствием или осторожно сформулированным противопоставлением. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9586fa0-87d5-5e7d-86b0-ad10aa0a497a', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"To sustain a long turn, develop each point with a reason, example, consequence, or carefully qualified contrast.","translation":"Чтобы поддерживать развёрнутый ответ, развивайте каждую мысль причиной, примером, последствием или осторожно сформулированным противопоставлением.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Developing Interactive Answers"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66eedbcc-fc45-5914-acf4-84112158d0ad', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“sustain a long turn” means speak coherently for an extended period.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D11","is_correct":true,"text":"speak coherently for an extended period"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D12","is_correct":false,"text":"encourage another person to contribute"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D13","is_correct":false,"text":"extend an idea with reasons or examples"}],"word":"sustain a long turn"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('258d5ace-f72f-541d-b133-cc061d0dca45', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To sustain a long turn, develop each point with a reason, example, consequence, or carefully qualified contrast.","explanation":"The missing B2 exam expression is “sustain a long turn”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"sustain a long turn","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D14","is_correct":true},{"audio_text":"develop a point","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D15","is_correct":false},{"audio_text":"negotiated outcome","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D16","is_correct":false}],"sentence_template":"To ___, develop each point with a reason, example, consequence, or carefully qualified contrast."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fa5f3e4-4888-543f-bce3-7018968ee189', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"sustain a long turn","explanation":"The complete answer uses “sustain a long turn” accurately.","hint_prefix":"sust","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To ___, develop each point with a reason, example, consequence, or carefully qualified contrast."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f985ec82-565f-5489-857a-5c71083d55ff', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"speculative comparison","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D17","text":"speculative comparison"},{"audio_text":"sustain a long turn","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D18","text":"sustain a long turn"},{"audio_text":"invite a response","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D19","text":"invite a response"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47c46cfb-5fa0-5127-94c8-210177902d65', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Developing Interactive Answers”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D20","is_correct":true,"text":"To sustain a long turn, develop each point with a reason, example, consequence, or carefully qualified contrast."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9dc1b714-744f-5ca4-b6ef-bae12149906c', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Negotiating a Joint Decision","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c88a264-3102-5c0e-9e8c-72f6442f5a7c', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D01","left":"speculative comparison","right":"предположительное сравнение"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D02","left":"sustain a long turn","right":"поддерживать развёрнутый ответ"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D03","left":"invite a response","right":"предложить высказаться"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D04","left":"develop a point","right":"развить мысль"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D05","left":"polite disagreement","right":"вежливое несогласие"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D06","left":"negotiated outcome","right":"согласованный результат"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D07","left":"justify a choice","right":"обосновать выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f9aac8a-77f2-50b9-bc7c-40c4f0431762', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D08","is_correct":true,"text":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7572b9f3-8dd8-5f4a-ae64-f2a2150e5e97', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Согласованный результат требует от кандидатов обосновывать выбор, реагировать на несогласие и явно подтверждать окончательное решение.","target_language":"en","word_bank":["A","negotiated","outcome","requires","candidates","to","justify","their","choices",",","respond","to","disagreement",",","and","explicitly","confirm","the","final","decision","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e3cfd73-b9e7-571e-8336-6d19a4fe678f', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"invite a response","instruction":"Выберите подходящее слово.","options":["invite a response","negotiated outcome","speculative comparison"],"sentence_template":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42ea51af-500c-519e-ac20-c34d44a263a1', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","negotiated","outcome","requires","candidates","to","justify","their","choices",",","respond","to","disagreement",",","and","explicitly","confirm","the","final","decision","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","decision","final","the","confirm","explicitly","and",",","disagreement","to","respond",",","choices","their","justify","to","candidates","requires","outcome","negotiated","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96d94961-37d3-5c7e-ad2e-36d58f8eab8c', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e11703f4-df3b-5931-8f39-a6cf532b19b4', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Согласованный результат требует от кандидатов обосновывать выбор, реагировать на несогласие и явно подтверждать окончательное решение. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7eb99a71-dcdc-5cac-807c-711585c6f627', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision.","translation":"Согласованный результат требует от кандидатов обосновывать выбор, реагировать на несогласие и явно подтверждать окончательное решение.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Negotiating a Joint Decision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a094ff81-22d5-5807-811b-0c1563aa98bd', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“invite a response” means encourage another person to contribute.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D11","is_correct":true,"text":"encourage another person to contribute"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D12","is_correct":false,"text":"extend an idea with reasons or examples"},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D13","is_correct":false,"text":"respectful expression of a different view"}],"word":"invite a response"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de6fe592-c285-5615-ad01-13d7e10eda1d', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision.","explanation":"The missing B2 exam expression is “invite a response”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"invite a response","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D14","is_correct":true},{"audio_text":"polite disagreement","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D15","is_correct":false},{"audio_text":"justify a choice","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D16","is_correct":false}],"sentence_template":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('973ebc89-9a61-5be4-982f-7cc1e01f065a', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"invite a response","explanation":"The complete answer uses “invite a response” accurately.","hint_prefix":"invi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef4d14ee-a31a-53a5-9563-2e0565559c06', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"speculative comparison","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D17","text":"speculative comparison"},{"audio_text":"sustain a long turn","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D18","text":"sustain a long turn"},{"audio_text":"invite a response","id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D19","text":"invite a response"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8a3db43-bfc1-5be5-9481-cc78b31cfe6f', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Negotiating a Joint Decision”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D20","is_correct":true,"text":"A negotiated outcome requires candidates to justify their choices, respond to disagreement, and explicitly confirm the final decision."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_SPEAKING_COMPARISON_DISCUSSION_AND_NEGOTIATION_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', '9dc1b714-744f-5ca4-b6ef-bae12149906c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cdee803c-f1e9-5492-b6d0-518c373e2cc2', 'en', 'speculative comparison', 'предположительное сравнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('640dd3e5-2f5c-57a2-972b-9ab6c449a26d', 'en', 'sustain a long turn', 'поддерживать развёрнутый ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53e5eb85-8eba-5201-8c73-9888e0da785d', 'en', 'invite a response', 'предложить высказаться', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a92023e3-c882-5f39-8e47-99ae235b4fd2', 'en', 'develop a point', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('62af3998-fbb7-59af-8121-813e24047dfc', 'en', 'polite disagreement', 'вежливое несогласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4869e788-586b-5060-bcee-2276dc125dda', 'en', 'negotiated outcome', 'согласованный результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44217252-0d75-5f8c-b8a4-2abd1f8d1402', 'en', 'justify a choice', 'обосновать выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cdee803c-f1e9-5492-b6d0-518c373e2cc2', 'en', 'speculative comparison', 'предположительное сравнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('640dd3e5-2f5c-57a2-972b-9ab6c449a26d', 'en', 'sustain a long turn', 'поддерживать развёрнутый ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53e5eb85-8eba-5201-8c73-9888e0da785d', 'en', 'invite a response', 'предложить высказаться', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a92023e3-c882-5f39-8e47-99ae235b4fd2', 'en', 'develop a point', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('62af3998-fbb7-59af-8121-813e24047dfc', 'en', 'polite disagreement', 'вежливое несогласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4869e788-586b-5060-bcee-2276dc125dda', 'en', 'negotiated outcome', 'согласованный результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44217252-0d75-5f8c-b8a4-2abd1f8d1402', 'en', 'justify a choice', 'обосновать выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cdee803c-f1e9-5492-b6d0-518c373e2cc2', 'en', 'speculative comparison', 'предположительное сравнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('640dd3e5-2f5c-57a2-972b-9ab6c449a26d', 'en', 'sustain a long turn', 'поддерживать развёрнутый ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53e5eb85-8eba-5201-8c73-9888e0da785d', 'en', 'invite a response', 'предложить высказаться', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a92023e3-c882-5f39-8e47-99ae235b4fd2', 'en', 'develop a point', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('62af3998-fbb7-59af-8121-813e24047dfc', 'en', 'polite disagreement', 'вежливое несогласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4869e788-586b-5060-bcee-2276dc125dda', 'en', 'negotiated outcome', 'согласованный результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44217252-0d75-5f8c-b8a4-2abd1f8d1402', 'en', 'justify a choice', 'обосновать выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '5d5470e2-a715-51d5-adc1-ba684482533c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculative comparison' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '5d5470e2-a715-51d5-adc1-ba684482533c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'sustain a long turn' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '5d5470e2-a715-51d5-adc1-ba684482533c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'invite a response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '5d5470e2-a715-51d5-adc1-ba684482533c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '5d5470e2-a715-51d5-adc1-ba684482533c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'polite disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '5d5470e2-a715-51d5-adc1-ba684482533c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiated outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '5d5470e2-a715-51d5-adc1-ba684482533c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'justify a choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculative comparison' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'sustain a long turn' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'invite a response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'polite disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiated outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, 'd1210008-4de9-589e-b2fe-b0f70a5ee70d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'justify a choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '9dc1b714-744f-5ca4-b6ef-bae12149906c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculative comparison' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '9dc1b714-744f-5ca4-b6ef-bae12149906c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'sustain a long turn' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '9dc1b714-744f-5ca4-b6ef-bae12149906c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'invite a response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '9dc1b714-744f-5ca4-b6ef-bae12149906c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '9dc1b714-744f-5ca4-b6ef-bae12149906c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'polite disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '9dc1b714-744f-5ca4-b6ef-bae12149906c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiated outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e126fd5-6c25-5b89-91d3-f68f01ab5bd3', id, '9dc1b714-744f-5ca4-b6ef-bae12149906c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'justify a choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
