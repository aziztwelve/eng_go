-- Track: B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('84eb2f9a-c560-594d-b6a1-ef201777d6da', 'B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS', 'Эссе, отчёты, обзоры и официальные письма', 'Развивайте экзаменационные навыки уровня B2 по теме «Эссе, отчёты, обзоры и официальные письма», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Essays, Reports, Reviews and Formal Emails","ru":"Эссе, отчёты, обзоры и официальные письма"}'::jsonb, '{"en":"Develop B2 exam skills for essays, reports, reviews and formal emails by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Эссе, отчёты, обзоры и официальные письма», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e6e01d10-292b-5f87-96f3-05df67978b5c', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Planning for Purpose and Reader","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54f46035-f59f-5bdd-b1ce-c2a5c2099a0f', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D01","left":"communicative purpose","right":"коммуникативная цель"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D02","left":"target reader","right":"целевой читатель"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D03","left":"thesis statement","right":"тезисное утверждение"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D04","left":"recommendation section","right":"раздел рекомендаций"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D05","left":"evaluative language","right":"оценочная лексика"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D06","left":"formal register","right":"официальный стиль"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D07","left":"cohesive progression","right":"связное развитие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('255d982d-16e3-5013-bcef-117952a2fc7d', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D08","is_correct":true,"text":"The communicative purpose determines what information the target reader needs and which register is appropriate."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d293479-08e1-5048-9932-5f484fba4e46', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The communicative purpose determines what information the target reader needs and which register is appropriate.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Коммуникативная цель определяет, какая информация нужна целевому читателю и какой стиль является уместным.","target_language":"en","word_bank":["The","communicative","purpose","determines","what","information","the","target","reader","needs","and","which","register","is","appropriate","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bef1666c-ec2e-5b64-bdb6-c308eb982262', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"communicative purpose","instruction":"Выберите подходящее слово.","options":["communicative purpose","recommendation section","formal register"],"sentence_template":"The ___ determines what information the target reader needs and which register is appropriate."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7590269e-b2ec-5ec2-84c1-e066930b54cf', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","communicative","purpose","determines","what","information","the","target","reader","needs","and","which","register","is","appropriate","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","appropriate","is","register","which","and","needs","reader","target","the","information","what","determines","purpose","communicative","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9defaf8-34cb-5d9e-841b-b3307bca1f69', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The communicative purpose determines what information the target reader needs and which register is appropriate. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7cc45336-66f3-5307-bd8b-0784231a116b', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The communicative purpose determines what information the target reader needs and which register is appropriate. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Коммуникативная цель определяет, какая информация нужна целевому читателю и какой стиль является уместным. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebce0788-c3d9-540c-a2d4-8eb379fade76', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The communicative purpose determines what information the target reader needs and which register is appropriate.","translation":"Коммуникативная цель определяет, какая информация нужна целевому читателю и какой стиль является уместным.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Planning for Purpose and Reader"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('964baf9a-4085-5ca3-97c0-225f89fcf21b', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“communicative purpose” means the result a text is intended to achieve.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D11","is_correct":true,"text":"the result a text is intended to achieve"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D12","is_correct":false,"text":"the audience for whom a text is written"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D13","is_correct":false,"text":"a sentence presenting a central position"}],"word":"communicative purpose"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e7c7be4-6f16-55f1-91ef-4cde2a91d889', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The communicative purpose determines what information the target reader needs and which register is appropriate.","explanation":"The missing B2 exam expression is “communicative purpose”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"communicative purpose","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D14","is_correct":true},{"audio_text":"thesis statement","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D15","is_correct":false},{"audio_text":"evaluative language","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D16","is_correct":false}],"sentence_template":"The ___ determines what information the target reader needs and which register is appropriate."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('784a45c6-fabe-5b10-899b-d49c86f53aa7', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"communicative purpose","explanation":"The complete answer uses “communicative purpose” accurately.","hint_prefix":"comm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ determines what information the target reader needs and which register is appropriate."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b6a4315-4274-5156-9573-0cf1b32b4d0b', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"communicative purpose","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D17","text":"communicative purpose"},{"audio_text":"target reader","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D18","text":"target reader"},{"audio_text":"thesis statement","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D19","text":"thesis statement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca682156-fb5f-502b-976a-1113c4781f02', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Planning for Purpose and Reader”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D20","is_correct":true,"text":"The communicative purpose determines what information the target reader needs and which register is appropriate."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('84eb2f9a-c560-594d-b6a1-ef201777d6da', 'e6e01d10-292b-5f87-96f3-05df67978b5c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5b3715f0-af98-56a1-858f-c30591f5fa5e', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Developing and Supporting Ideas","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea479ae4-2644-5aac-a69a-b5a396bdeb11', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D01","left":"communicative purpose","right":"коммуникативная цель"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D02","left":"target reader","right":"целевой читатель"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D03","left":"thesis statement","right":"тезисное утверждение"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D04","left":"recommendation section","right":"раздел рекомендаций"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D05","left":"evaluative language","right":"оценочная лексика"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D06","left":"formal register","right":"официальный стиль"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D07","left":"cohesive progression","right":"связное развитие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('398b8817-e5b0-5f2f-a1c3-d837102a4c2e', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D08","is_correct":true,"text":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ea6a936-1d2e-5815-9555-e5bbd2874981', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чёткое тезисное утверждение должно развиваться в отдельных абзацах с причинами, доказательствами и уместными примерами.","target_language":"en","word_bank":["A","clear","thesis","statement","should","be","developed","through","distinct","paragraphs","containing","reasons",",","evidence",",","and","relevant","examples","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14cc7c1b-40ad-5ae7-9f12-55c26d629f23', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"target reader","instruction":"Выберите подходящее слово.","options":["target reader","evaluative language","cohesive progression"],"sentence_template":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8019e1fc-3393-51f8-a3ee-0179516f25f9', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","clear","thesis","statement","should","be","developed","through","distinct","paragraphs","containing","reasons",",","evidence",",","and","relevant","examples","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","examples","relevant","and",",","evidence",",","reasons","containing","paragraphs","distinct","through","developed","be","should","statement","thesis","clear","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90c89311-8e12-5c07-94fe-a4d524285155', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dc1b5c2-b411-5449-a02b-b78b2f742d35', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чёткое тезисное утверждение должно развиваться в отдельных абзацах с причинами, доказательствами и уместными примерами. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('923e17b7-2c8d-5fbc-8b90-791faf6522b2', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples.","translation":"Чёткое тезисное утверждение должно развиваться в отдельных абзацах с причинами, доказательствами и уместными примерами.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Developing and Supporting Ideas"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c2e1657-2ec7-59ca-abae-ebf99d639462', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“target reader” means the audience for whom a text is written.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D11","is_correct":true,"text":"the audience for whom a text is written"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D12","is_correct":false,"text":"a sentence presenting a central position"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D13","is_correct":false,"text":"the part of a report proposing action"}],"word":"target reader"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a78c0d0-fa7f-5027-8753-af5597f87900', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples.","explanation":"The missing B2 exam expression is “target reader”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"target reader","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D14","is_correct":true},{"audio_text":"recommendation section","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D15","is_correct":false},{"audio_text":"formal register","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D16","is_correct":false}],"sentence_template":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d48058d0-dd76-5deb-8334-cdb8131fc55a', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"target reader","explanation":"The complete answer uses “target reader” accurately.","hint_prefix":"targ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf4ea380-534b-564c-8bfd-38b7b0fde2c1', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"communicative purpose","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D17","text":"communicative purpose"},{"audio_text":"target reader","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D18","text":"target reader"},{"audio_text":"thesis statement","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D19","text":"thesis statement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd4d5b1b-c61c-5f32-ad5f-ea9e1fd5a880', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Developing and Supporting Ideas”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D20","is_correct":true,"text":"A clear thesis statement should be developed through distinct paragraphs containing reasons, evidence, and relevant examples."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('84eb2f9a-c560-594d-b6a1-ef201777d6da', '5b3715f0-af98-56a1-858f-c30591f5fa5e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ff68691f-5446-5755-85e2-6211f2c37d8b', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Editing Register and Cohesion","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('557d5009-730f-51a6-be20-e009675b2fe7', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D01","left":"communicative purpose","right":"коммуникативная цель"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D02","left":"target reader","right":"целевой читатель"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D03","left":"thesis statement","right":"тезисное утверждение"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D04","left":"recommendation section","right":"раздел рекомендаций"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D05","left":"evaluative language","right":"оценочная лексика"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D06","left":"formal register","right":"официальный стиль"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D07","left":"cohesive progression","right":"связное развитие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69ae70d9-dc64-5233-959f-beae5de66976', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D08","is_correct":true,"text":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a700095f-1a35-5014-91a6-b95ac325c419', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эффективное редактирование проверяет связное развитие, последовательный официальный стиль, выполнение задания и соответствие вывода обсуждению.","target_language":"en","word_bank":["Effective","editing","checks","cohesive","progression",",","consistent","formal","register",",","task","completion",",","and","whether","the","conclusion","follows","from","the","discussion","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2570af7f-696e-5fda-848e-510aba1070d8', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"thesis statement","instruction":"Выберите подходящее слово.","options":["thesis statement","formal register","communicative purpose"],"sentence_template":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e633db5-2676-59a3-a9c2-4b1722567def', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Effective","editing","checks","cohesive","progression",",","consistent","formal","register",",","task","completion",",","and","whether","the","conclusion","follows","from","the","discussion","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","discussion","the","from","follows","conclusion","the","whether","and",",","completion","task",",","register","formal","consistent",",","progression","cohesive","checks","editing","Effective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa0c6aab-76a9-5856-99d8-2b7f5da533a7', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a14b6d3b-8592-57f5-9e64-4366d5120fee', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Эффективное редактирование проверяет связное развитие, последовательный официальный стиль, выполнение задания и соответствие вывода обсуждению. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('014e9bf5-fb08-519e-bed6-e5d521cd3ccf', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion.","translation":"Эффективное редактирование проверяет связное развитие, последовательный официальный стиль, выполнение задания и соответствие вывода обсуждению.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Editing Register and Cohesion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3cb45ef-5f8c-5346-96f2-043c1caf55b5', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“thesis statement” means a sentence presenting a central position.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D11","is_correct":true,"text":"a sentence presenting a central position"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D12","is_correct":false,"text":"the part of a report proposing action"},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D13","is_correct":false,"text":"wording expressing judgement against criteria"}],"word":"thesis statement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8cfecf53-0700-5300-8cff-4d5e05e20bd7', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion.","explanation":"The missing B2 exam expression is “thesis statement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"thesis statement","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D14","is_correct":true},{"audio_text":"evaluative language","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D15","is_correct":false},{"audio_text":"cohesive progression","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D16","is_correct":false}],"sentence_template":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3015cfb4-57ae-55ec-9888-264940d9204a', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"thesis statement","explanation":"The complete answer uses “thesis statement” accurately.","hint_prefix":"thes","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ff9ba3f-35ff-5a20-b2b0-ec4f25c1040a', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"communicative purpose","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D17","text":"communicative purpose"},{"audio_text":"target reader","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D18","text":"target reader"},{"audio_text":"thesis statement","id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D19","text":"thesis statement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49057b08-52bd-545d-8438-193cb22eb82d', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Editing Register and Cohesion”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D20","is_correct":true,"text":"Effective editing checks cohesive progression, consistent formal register, task completion, and whether the conclusion follows from the discussion."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_ESSAYS_REPORTS_REVIEWS_AND_FORMAL_EMAILS_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('84eb2f9a-c560-594d-b6a1-ef201777d6da', 'ff68691f-5446-5755-85e2-6211f2c37d8b', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c4ccf08-13c1-5554-83bf-5be7093dba80', 'en', 'communicative purpose', 'коммуникативная цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d81c4d1a-aac2-5be1-b13b-7132dc43c887', 'en', 'target reader', 'целевой читатель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ddcf508-1cfd-5b74-9664-0e99592e60fd', 'en', 'thesis statement', 'тезисное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bd6cb39-236b-5be5-a508-25273a716fa6', 'en', 'recommendation section', 'раздел рекомендаций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dfd0d8-6629-5086-8f87-ac3a727a90c7', 'en', 'evaluative language', 'оценочная лексика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('412698e6-5d47-5a52-a491-900dd39a7ba9', 'en', 'formal register', 'официальный стиль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec3fbe27-d0c3-5e1c-95ec-9a87dfc381c8', 'en', 'cohesive progression', 'связное развитие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c4ccf08-13c1-5554-83bf-5be7093dba80', 'en', 'communicative purpose', 'коммуникативная цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d81c4d1a-aac2-5be1-b13b-7132dc43c887', 'en', 'target reader', 'целевой читатель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ddcf508-1cfd-5b74-9664-0e99592e60fd', 'en', 'thesis statement', 'тезисное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bd6cb39-236b-5be5-a508-25273a716fa6', 'en', 'recommendation section', 'раздел рекомендаций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dfd0d8-6629-5086-8f87-ac3a727a90c7', 'en', 'evaluative language', 'оценочная лексика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('412698e6-5d47-5a52-a491-900dd39a7ba9', 'en', 'formal register', 'официальный стиль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec3fbe27-d0c3-5e1c-95ec-9a87dfc381c8', 'en', 'cohesive progression', 'связное развитие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c4ccf08-13c1-5554-83bf-5be7093dba80', 'en', 'communicative purpose', 'коммуникативная цель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d81c4d1a-aac2-5be1-b13b-7132dc43c887', 'en', 'target reader', 'целевой читатель', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ddcf508-1cfd-5b74-9664-0e99592e60fd', 'en', 'thesis statement', 'тезисное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bd6cb39-236b-5be5-a508-25273a716fa6', 'en', 'recommendation section', 'раздел рекомендаций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dfd0d8-6629-5086-8f87-ac3a727a90c7', 'en', 'evaluative language', 'оценочная лексика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('412698e6-5d47-5a52-a491-900dd39a7ba9', 'en', 'formal register', 'официальный стиль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec3fbe27-d0c3-5e1c-95ec-9a87dfc381c8', 'en', 'cohesive progression', 'связное развитие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'e6e01d10-292b-5f87-96f3-05df67978b5c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'communicative purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'e6e01d10-292b-5f87-96f3-05df67978b5c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'target reader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'e6e01d10-292b-5f87-96f3-05df67978b5c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'thesis statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'e6e01d10-292b-5f87-96f3-05df67978b5c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation section' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'e6e01d10-292b-5f87-96f3-05df67978b5c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluative language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'e6e01d10-292b-5f87-96f3-05df67978b5c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'e6e01d10-292b-5f87-96f3-05df67978b5c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, '5b3715f0-af98-56a1-858f-c30591f5fa5e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'communicative purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, '5b3715f0-af98-56a1-858f-c30591f5fa5e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'target reader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, '5b3715f0-af98-56a1-858f-c30591f5fa5e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'thesis statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, '5b3715f0-af98-56a1-858f-c30591f5fa5e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation section' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, '5b3715f0-af98-56a1-858f-c30591f5fa5e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluative language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, '5b3715f0-af98-56a1-858f-c30591f5fa5e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, '5b3715f0-af98-56a1-858f-c30591f5fa5e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'ff68691f-5446-5755-85e2-6211f2c37d8b', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'communicative purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'ff68691f-5446-5755-85e2-6211f2c37d8b', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'target reader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'ff68691f-5446-5755-85e2-6211f2c37d8b', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'thesis statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'ff68691f-5446-5755-85e2-6211f2c37d8b', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation section' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'ff68691f-5446-5755-85e2-6211f2c37d8b', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluative language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'ff68691f-5446-5755-85e2-6211f2c37d8b', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '84eb2f9a-c560-594d-b6a1-ef201777d6da', id, 'ff68691f-5446-5755-85e2-6211f2c37d8b', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
