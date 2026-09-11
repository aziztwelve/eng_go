-- Track: C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', 'C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING', 'Услуги, жалобы и дипломатичное решение проблем', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Услуги, жалобы и дипломатичное решение проблем» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Services, Complaints and Diplomatic Problem-Solving","ru":"Услуги, жалобы и дипломатичное решение проблем"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for services, complaints and diplomatic problem-solving and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Услуги, жалобы и дипломатичное решение проблем» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9e1bfa1e-1194-5550-8ee9-84b78716c773', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Explaining a Complicated Problem","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9138fd97-1c70-52b6-a3d4-300e947cf988', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D01","left":"fall short of","right":"не соответствовать"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D02","left":"not fit for purpose","right":"непригодный для цели"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D03","left":"reasonable remedy","right":"разумное решение"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D04","left":"I appreciate that","right":"я понимаю, что"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D05","left":"that being said","right":"при этом"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D06","left":"meet halfway","right":"пойти навстречу друг другу"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D07","left":"put it right","right":"исправить ситуацию"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76644f15-1be3-5617-8fca-c4e0aa0750cf', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D08","is_correct":true,"text":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4df8e5b-8bb4-58bf-a2b1-e3807bb1aa06', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Услуга не соответствовала заявленному, а замена была непригодна для цели, которую я ясно объяснил.","target_language":"en","word_bank":["The","service","fell","short","of","what","was","advertised",",","and","the","replacement","was","not","fit","for","the","purpose","I","had","clearly","explained","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3028411e-3499-533b-891a-922229ecc237', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"fall short of","instruction":"Выберите подходящее слово.","options":["fall short of","I appreciate that","meet halfway"],"sentence_template":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dfbe9ca-f713-568a-beb3-2741197dd214', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","service","fell","short","of","what","was","advertised",",","and","the","replacement","was","not","fit","for","the","purpose","I","had","clearly","explained","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","explained","clearly","had","I","purpose","the","for","fit","not","was","replacement","the","and",",","advertised","was","what","of","short","fell","service","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a38cbe09-00a8-5716-94d7-8aba22488c50', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9b25913-be9e-5f02-b3c3-6f7495605a2a', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Услуга не соответствовала заявленному, а замена была непригодна для цели, которую я ясно объяснил. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69b4ef13-5d0a-5fd1-b9b7-32d9c95f3912', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained.","translation":"Услуга не соответствовала заявленному, а замена была непригодна для цели, которую я ясно объяснил.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Explaining a Complicated Problem"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfd9df92-8d1c-5c2d-9ee0-b2c334bebfdb', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“fall short of” means fail to reach an expected standard.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D11","is_correct":true,"text":"fail to reach an expected standard"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D12","is_correct":false,"text":"unable to perform its intended function"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D13","is_correct":false,"text":"a fair action correcting a problem"}],"word":"fall short of"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('431d41b6-3888-57cb-bd8e-a9c1add2d192', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained.","explanation":"The missing everyday expression is “fall short of”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"fall short of","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D14","is_correct":true},{"audio_text":"reasonable remedy","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D15","is_correct":false},{"audio_text":"that being said","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D16","is_correct":false}],"sentence_template":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b2f4d49-24ec-5a86-9895-b69f6a9e59a1', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"fall short of","explanation":"The recording uses “fall short of” naturally in context.","hint_prefix":"fall","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4786f067-fe29-5829-9315-4cfaf9d2eea4', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"fall short of","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D17","text":"fall short of"},{"audio_text":"not fit for purpose","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D18","text":"not fit for purpose"},{"audio_text":"reasonable remedy","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D19","text":"reasonable remedy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8612ffb-bbe7-5ca9-ae1e-8e978af3533c', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Explaining a Complicated Problem”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D20","is_correct":true,"text":"The service fell short of what was advertised, and the replacement was not fit for the purpose I had clearly explained."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', '9e1bfa1e-1194-5550-8ee9-84b78716c773', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1e282a70-0898-5c36-aa78-4397514e7d20', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Responding to an Unsuitable Offer","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('daf8b52b-e67b-51f4-a225-62eed9fbfa88', '1e282a70-0898-5c36-aa78-4397514e7d20', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D01","left":"fall short of","right":"не соответствовать"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D02","left":"not fit for purpose","right":"непригодный для цели"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D03","left":"reasonable remedy","right":"разумное решение"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D04","left":"I appreciate that","right":"я понимаю, что"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D05","left":"that being said","right":"при этом"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D06","left":"meet halfway","right":"пойти навстречу друг другу"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D07","left":"put it right","right":"исправить ситуацию"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f94f23a-4392-55f2-bf83-df335e7423df', '1e282a70-0898-5c36-aa78-4397514e7d20', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D08","is_correct":true,"text":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('768103b6-572e-5106-9af3-7b994ea83292', '1e282a70-0898-5c36-aa78-4397514e7d20', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я понимаю, что задержка была неожиданной; при этом предложенный ваучер не покрывает дополнительные расходы.","target_language":"en","word_bank":["I","appreciate","that","the","delay","was","unexpected",";","that","being","said",",","the","proposed","voucher","does","not","cover","the","additional","cost","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd62f46a-4fe3-5748-a078-b7274126b209', '1e282a70-0898-5c36-aa78-4397514e7d20', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"not fit for purpose","instruction":"Выберите подходящее слово.","options":["not fit for purpose","that being said","put it right"],"sentence_template":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39fd56b7-fe87-5b79-8ce8-ce54e6fdf2a0', '1e282a70-0898-5c36-aa78-4397514e7d20', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","appreciate","that","the","delay","was","unexpected",";","that","being","said",",","the","proposed","voucher","does","not","cover","the","additional","cost","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","cost","additional","the","cover","not","does","voucher","proposed","the",",","said","being","that",";","unexpected","was","delay","the","that","appreciate","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0efa0907-2739-532d-86ca-e659d58f4d82', '1e282a70-0898-5c36-aa78-4397514e7d20', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aca71a4e-e6b3-5cb8-a459-9dcfc05812ea', '1e282a70-0898-5c36-aa78-4397514e7d20', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я понимаю, что задержка была неожиданной; при этом предложенный ваучер не покрывает дополнительные расходы. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4f19ac9-078d-554f-9b57-1571e4b1772e', '1e282a70-0898-5c36-aa78-4397514e7d20', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost.","translation":"Я понимаю, что задержка была неожиданной; при этом предложенный ваучер не покрывает дополнительные расходы.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Responding to an Unsuitable Offer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce84b65a-9023-5ff6-a63d-b011ee6c8b51', '1e282a70-0898-5c36-aa78-4397514e7d20', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“not fit for purpose” means unable to perform its intended function.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D11","is_correct":true,"text":"unable to perform its intended function"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D12","is_correct":false,"text":"a fair action correcting a problem"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D13","is_correct":false,"text":"a diplomatic phrase acknowledging another view"}],"word":"not fit for purpose"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a0786cf-6057-5eba-aa1a-21f4837e0b99', '1e282a70-0898-5c36-aa78-4397514e7d20', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost.","explanation":"The missing everyday expression is “not fit for purpose”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"not fit for purpose","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D14","is_correct":true},{"audio_text":"I appreciate that","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D15","is_correct":false},{"audio_text":"meet halfway","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D16","is_correct":false}],"sentence_template":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('753eeff0-5a75-5bfc-858b-d69a3669f61c', '1e282a70-0898-5c36-aa78-4397514e7d20', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"not fit for purpose","explanation":"The recording uses “not fit for purpose” naturally in context.","hint_prefix":"not ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a83a4914-86fb-5a32-b99e-64f616329ebc', '1e282a70-0898-5c36-aa78-4397514e7d20', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"fall short of","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D17","text":"fall short of"},{"audio_text":"not fit for purpose","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D18","text":"not fit for purpose"},{"audio_text":"reasonable remedy","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D19","text":"reasonable remedy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b0c7167-908d-54d4-a8b0-dbb7ab66104f', '1e282a70-0898-5c36-aa78-4397514e7d20', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Responding to an Unsuitable Offer”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D20","is_correct":true,"text":"I appreciate that the delay was unexpected; that being said, the proposed voucher does not cover the additional cost."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', '1e282a70-0898-5c36-aa78-4397514e7d20', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('34586145-dca7-54e9-9994-9cf11b1ec10b', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Agreeing a Fair Solution","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d675907-fab7-5c82-bfb4-dd782d4347cf', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D01","left":"fall short of","right":"не соответствовать"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D02","left":"not fit for purpose","right":"непригодный для цели"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D03","left":"reasonable remedy","right":"разумное решение"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D04","left":"I appreciate that","right":"я понимаю, что"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D05","left":"that being said","right":"при этом"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D06","left":"meet halfway","right":"пойти навстречу друг другу"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D07","left":"put it right","right":"исправить ситуацию"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40167c01-6736-5245-86f4-042eb7f097a5', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D08","is_correct":true,"text":"I am willing to meet you halfway if you can put the problem right today and confirm the reasonable remedy in writing."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7386c85-5ba3-5527-972e-aaad3aa16c13', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am willing to meet you halfway if you can put the problem right today and confirm the reasonable remedy in writing.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я готов пойти вам навстречу, если вы исправите ситуацию сегодня и письменно подтвердите разумное решение.","target_language":"en","word_bank":["I","am","willing","to","meet","you","halfway","if","you","can","put","the","problem","right","today","and","confirm","the","reasonable","remedy","in","writing","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df868449-9618-5027-b2a9-b09445917cf2', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reasonable remedy","instruction":"Выберите подходящее слово.","options":["reasonable remedy","meet halfway","fall short of"],"sentence_template":"I am willing to meet you halfway if you can put the problem right today and confirm the ___ in writing."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5363820-b700-5836-9104-63e94242f065', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","willing","to","meet","you","halfway","if","you","can","put","the","problem","right","today","and","confirm","the","reasonable","remedy","in","writing","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","writing","in","remedy","reasonable","the","confirm","and","today","right","problem","the","put","can","you","if","halfway","you","meet","to","willing","am","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf07ea2a-7c98-5f5d-b66f-59c44fcd4e90', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am willing to meet you halfway if you can put the problem right today and confirm the reasonable remedy in writing. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21343f95-d3bb-5b95-85db-19895d21884e', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am willing to meet you halfway if you can put the problem right today and confirm the reasonable remedy in writing. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я готов пойти вам навстречу, если вы исправите ситуацию сегодня и письменно подтвердите разумное решение. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16a7b2ab-a373-5e01-b0ce-ed9c9305eed2', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I am willing to meet you halfway if you can put the problem right today and confirm the reasonable remedy in writing.","translation":"Я готов пойти вам навстречу, если вы исправите ситуацию сегодня и письменно подтвердите разумное решение.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Agreeing a Fair Solution"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2384437-5ffe-5b4e-b082-f7dadd3d94c1', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reasonable remedy” means a fair action correcting a problem.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D11","is_correct":true,"text":"a fair action correcting a problem"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D12","is_correct":false,"text":"a diplomatic phrase acknowledging another view"},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D13","is_correct":false,"text":"a phrase introducing a contrasting point"}],"word":"reasonable remedy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eca12f4d-d8b9-5751-b5d5-28b84b14dff9', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am willing to meet you halfway if you can put the problem right today and confirm the reasonable remedy in writing.","explanation":"The missing everyday expression is “reasonable remedy”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reasonable remedy","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D14","is_correct":true},{"audio_text":"that being said","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D15","is_correct":false},{"audio_text":"put it right","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D16","is_correct":false}],"sentence_template":"I am willing to meet you halfway if you can put the problem right today and confirm the ___ in writing."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c213a98-a5a0-5cd6-b6a1-92afb82a799f', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reasonable remedy","explanation":"The recording uses “reasonable remedy” naturally in context.","hint_prefix":"reas","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am willing to meet you halfway if you can put the problem right today and confirm the ___ in writing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5699c0cc-3e47-5de8-a896-00221df4b884', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"fall short of","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D17","text":"fall short of"},{"audio_text":"not fit for purpose","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D18","text":"not fit for purpose"},{"audio_text":"reasonable remedy","id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D19","text":"reasonable remedy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99b47a75-f64c-5665-bf87-3deceed5b96d', '34586145-dca7-54e9-9994-9cf11b1ec10b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Agreeing a Fair Solution”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D20","is_correct":true,"text":"I am willing to meet you halfway if you can put the problem right today and confirm the reasonable remedy in writing."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_SERVICES_COMPLAINTS_AND_DIPLOMATIC_PROBLEM_SOLVING_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', '34586145-dca7-54e9-9994-9cf11b1ec10b', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('599e8e48-d73b-58f0-89e2-21a9be4eb371', 'en', 'fall short of', 'не соответствовать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae9e717b-d9b5-5582-82ef-73cd5f06f081', 'en', 'not fit for purpose', 'непригодный для цели', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('471b1de5-5587-5648-9134-1903002f13d6', 'en', 'reasonable remedy', 'разумное решение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5afbfa0-a158-5897-b4d6-d2c8aaae2b07', 'en', 'I appreciate that', 'я понимаю, что', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ab29b40-a0de-5573-b335-2dfa9b1479a2', 'en', 'that being said', 'при этом', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('252dc797-4bc7-521d-ba04-8caafdf1d500', 'en', 'meet halfway', 'пойти навстречу друг другу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('020080db-d055-5723-b240-9a9070bd5d49', 'en', 'put it right', 'исправить ситуацию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('599e8e48-d73b-58f0-89e2-21a9be4eb371', 'en', 'fall short of', 'не соответствовать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae9e717b-d9b5-5582-82ef-73cd5f06f081', 'en', 'not fit for purpose', 'непригодный для цели', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('471b1de5-5587-5648-9134-1903002f13d6', 'en', 'reasonable remedy', 'разумное решение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5afbfa0-a158-5897-b4d6-d2c8aaae2b07', 'en', 'I appreciate that', 'я понимаю, что', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ab29b40-a0de-5573-b335-2dfa9b1479a2', 'en', 'that being said', 'при этом', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('252dc797-4bc7-521d-ba04-8caafdf1d500', 'en', 'meet halfway', 'пойти навстречу друг другу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('020080db-d055-5723-b240-9a9070bd5d49', 'en', 'put it right', 'исправить ситуацию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('599e8e48-d73b-58f0-89e2-21a9be4eb371', 'en', 'fall short of', 'не соответствовать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae9e717b-d9b5-5582-82ef-73cd5f06f081', 'en', 'not fit for purpose', 'непригодный для цели', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('471b1de5-5587-5648-9134-1903002f13d6', 'en', 'reasonable remedy', 'разумное решение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5afbfa0-a158-5897-b4d6-d2c8aaae2b07', 'en', 'I appreciate that', 'я понимаю, что', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ab29b40-a0de-5573-b335-2dfa9b1479a2', 'en', 'that being said', 'при этом', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('252dc797-4bc7-521d-ba04-8caafdf1d500', 'en', 'meet halfway', 'пойти навстречу друг другу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('020080db-d055-5723-b240-9a9070bd5d49', 'en', 'put it right', 'исправить ситуацию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '9e1bfa1e-1194-5550-8ee9-84b78716c773', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'fall short of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '9e1bfa1e-1194-5550-8ee9-84b78716c773', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'not fit for purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '9e1bfa1e-1194-5550-8ee9-84b78716c773', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '9e1bfa1e-1194-5550-8ee9-84b78716c773', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'I appreciate that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '9e1bfa1e-1194-5550-8ee9-84b78716c773', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'that being said' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '9e1bfa1e-1194-5550-8ee9-84b78716c773', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet halfway' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '9e1bfa1e-1194-5550-8ee9-84b78716c773', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'put it right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '1e282a70-0898-5c36-aa78-4397514e7d20', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'fall short of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '1e282a70-0898-5c36-aa78-4397514e7d20', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'not fit for purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '1e282a70-0898-5c36-aa78-4397514e7d20', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '1e282a70-0898-5c36-aa78-4397514e7d20', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'I appreciate that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '1e282a70-0898-5c36-aa78-4397514e7d20', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'that being said' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '1e282a70-0898-5c36-aa78-4397514e7d20', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet halfway' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '1e282a70-0898-5c36-aa78-4397514e7d20', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'put it right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '34586145-dca7-54e9-9994-9cf11b1ec10b', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'fall short of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '34586145-dca7-54e9-9994-9cf11b1ec10b', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'not fit for purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '34586145-dca7-54e9-9994-9cf11b1ec10b', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '34586145-dca7-54e9-9994-9cf11b1ec10b', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'I appreciate that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '34586145-dca7-54e9-9994-9cf11b1ec10b', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'that being said' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '34586145-dca7-54e9-9994-9cf11b1ec10b', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet halfway' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '02aaf421-1fc1-5dc4-8130-d6fe265ec1c2', id, '34586145-dca7-54e9-9994-9cf11b1ec10b', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'put it right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
