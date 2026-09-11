-- Track: C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('693525d4-a564-5fb6-aec8-6566907c7b3b', 'C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS', 'Изменение планов и спонтанные решения', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Изменение планов и спонтанные решения» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Changing Plans and Spontaneous Decisions","ru":"Изменение планов и спонтанные решения"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for changing plans and spontaneous decisions and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Изменение планов и спонтанные решения» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dec799ad-d274-5770-ba47-dd9da407f9a5', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Following Rapid Plan Changes","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('802c7001-c814-5ab7-974b-111e5cd2192f', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D01","left":"something has come up","right":"возникли обстоятельства"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D02","left":"keep one’s options open","right":"не ограничивать выбор"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D03","left":"work around","right":"обойти затруднение"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D04","left":"on the spur of the moment","right":"под влиянием момента"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D05","left":"pencil something in","right":"предварительно записать"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D06","left":"fall through","right":"сорваться"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D07","left":"make the most of","right":"извлечь максимум пользы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31222d6f-ba9a-5012-bef2-8a14f8316563', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D08","is_correct":true,"text":"Something has come up, so could we pencil dinner in for Thursday while keeping Friday open as a backup?"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28d9a9af-fa51-5404-8632-eee39b99d625', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Something has come up, so could we pencil dinner in for Thursday while keeping Friday open as a backup?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Возникли обстоятельства, поэтому можем предварительно назначить ужин на четверг, оставив пятницу как запасной вариант?","target_language":"en","word_bank":["Something","has","come","up",",","so","could","we","pencil","dinner","in","for","Thursday","while","keeping","Friday","open","as","a","backup","?"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19f6436e-710f-508f-8faf-2b6de33cb77d', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"something has come up","instruction":"Выберите подходящее слово.","options":["something has come up","on the spur of the moment","fall through"],"sentence_template":"___, so could we pencil dinner in for Thursday while keeping Friday open as a backup?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff6ff805-86e9-537f-a510-92ac8fff808a', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Something","has","come","up",",","so","could","we","pencil","dinner","in","for","Thursday","while","keeping","Friday","open","as","a","backup","?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["?","backup","a","as","open","Friday","keeping","while","Thursday","for","in","dinner","pencil","we","could","so",",","up","come","has","Something"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4179bbf-a547-505a-bfda-557e03f30617', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Something has come up, so could we pencil dinner in for Thursday while keeping Friday open as a backup? Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27851a3b-687e-531e-b0bb-3dd04252fd09', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Something has come up, so could we pencil dinner in for Thursday while keeping Friday open as a backup? Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Возникли обстоятельства, поэтому можем предварительно назначить ужин на четверг, оставив пятницу как запасной вариант? Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c30feb1f-cde2-55c4-a79f-c1bf0e9ef6e8', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Something has come up, so could we pencil dinner in for Thursday while keeping Friday open as a backup?","translation":"Возникли обстоятельства, поэтому можем предварительно назначить ужин на четверг, оставив пятницу как запасной вариант?","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Following Rapid Plan Changes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4b88e1e-8400-5b24-9848-3affc23b626d', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“something has come up” means an unexpected matter requires attention.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D11","is_correct":true,"text":"an unexpected matter requires attention"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D12","is_correct":false,"text":"avoid committing too early"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D13","is_correct":false,"text":"find a practical way past a problem"}],"word":"something has come up"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('489071e5-3724-57fa-ad49-cb554aee766e', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Something has come up, so could we pencil dinner in for Thursday while keeping Friday open as a backup?","explanation":"The missing everyday expression is “something has come up”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"something has come up","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D14","is_correct":true},{"audio_text":"work around","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D15","is_correct":false},{"audio_text":"pencil something in","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D16","is_correct":false}],"sentence_template":"___, so could we pencil dinner in for Thursday while keeping Friday open as a backup?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89b9aa81-03be-51ed-89ee-1141cf3300cb', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"something has come up","explanation":"The recording uses “something has come up” naturally in context.","hint_prefix":"some","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___, so could we pencil dinner in for Thursday while keeping Friday open as a backup?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d3c68a7-59da-57e1-8848-3dfb934da4fd', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"something has come up","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D17","text":"something has come up"},{"audio_text":"keep one’s options open","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D18","text":"keep one’s options open"},{"audio_text":"work around","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D19","text":"work around"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61bd7373-6e74-54e8-8767-f7daffed32a5', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Following Rapid Plan Changes”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D20","is_correct":true,"text":"Something has come up, so could we pencil dinner in for Thursday while keeping Friday open as a backup?"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('693525d4-a564-5fb6-aec8-6566907c7b3b', 'dec799ad-d274-5770-ba47-dd9da407f9a5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4b92e063-8fbf-52ac-ab81-73195dd93909', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Weighing Up Alternatives","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81809dc9-5c40-5fa7-aab7-f2f5e648b1fe', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D01","left":"something has come up","right":"возникли обстоятельства"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D02","left":"keep one’s options open","right":"не ограничивать выбор"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D03","left":"work around","right":"обойти затруднение"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D04","left":"on the spur of the moment","right":"под влиянием момента"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D05","left":"pencil something in","right":"предварительно записать"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D06","left":"fall through","right":"сорваться"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D07","left":"make the most of","right":"извлечь максимум пользы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7dd5920f-b8a3-5ce1-8b49-633764f3aa80', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D08","is_correct":true,"text":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a773595d-31c4-5972-806e-091a30a55786', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Если план на улице сорвётся, мы сможем обойти проблему с погодой и решить всё под влиянием момента.","target_language":"en","word_bank":["If","the","outdoor","plan","falls","through",",","we","can","work","around","the","weather","and","decide","on","the","spur","of","the","moment","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('849c74ec-dd60-52a5-882a-97de3e95b485', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"keep one’s options open","instruction":"Выберите подходящее слово.","options":["keep one’s options open","pencil something in","make the most of"],"sentence_template":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('270a1cd2-f65e-5a2c-a51c-7e3727525d14', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["If","the","outdoor","plan","falls","through",",","we","can","work","around","the","weather","and","decide","on","the","spur","of","the","moment","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","moment","the","of","spur","the","on","decide","and","weather","the","around","work","can","we",",","through","falls","plan","outdoor","the","If"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60be05a1-b30f-513f-baf6-db9a5917f554', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1d0149d-b0bf-51ef-8e8c-cb5d25b4d388', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Если план на улице сорвётся, мы сможем обойти проблему с погодой и решить всё под влиянием момента. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('191a5f88-dbde-5415-9d10-4fae888026a5', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment.","translation":"Если план на улице сорвётся, мы сможем обойти проблему с погодой и решить всё под влиянием момента.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Weighing Up Alternatives"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8317c2f-276c-5151-895c-d56b4e51ad13', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“keep one’s options open” means avoid committing too early.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D11","is_correct":true,"text":"avoid committing too early"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D12","is_correct":false,"text":"find a practical way past a problem"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D13","is_correct":false,"text":"without advance planning"}],"word":"keep one’s options open"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1284ccd5-9252-5913-bfe9-df98237251c5', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment.","explanation":"The missing everyday expression is “keep one’s options open”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"keep one’s options open","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D14","is_correct":true},{"audio_text":"on the spur of the moment","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D15","is_correct":false},{"audio_text":"fall through","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D16","is_correct":false}],"sentence_template":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24f0b3d0-4342-5e8d-99dd-42f1eaebf787', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"keep one’s options open","explanation":"The recording uses “keep one’s options open” naturally in context.","hint_prefix":"keep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('748cf052-b58b-5766-88e5-6c337833de58', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"something has come up","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D17","text":"something has come up"},{"audio_text":"keep one’s options open","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D18","text":"keep one’s options open"},{"audio_text":"work around","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D19","text":"work around"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('143b8196-8585-5e06-951c-23eb25b8cde4', '4b92e063-8fbf-52ac-ab81-73195dd93909', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Weighing Up Alternatives”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D20","is_correct":true,"text":"If the outdoor plan falls through, we can work around the weather and decide on the spur of the moment."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('693525d4-a564-5fb6-aec8-6566907c7b3b', '4b92e063-8fbf-52ac-ab81-73195dd93909', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('024f9113-bc88-54d6-ae2c-55e265192998', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Confirming Flexible Arrangements","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4563dba2-bf9a-581a-b080-7553a446e36d', '024f9113-bc88-54d6-ae2c-55e265192998', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D01","left":"something has come up","right":"возникли обстоятельства"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D02","left":"keep one’s options open","right":"не ограничивать выбор"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D03","left":"work around","right":"обойти затруднение"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D04","left":"on the spur of the moment","right":"под влиянием момента"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D05","left":"pencil something in","right":"предварительно записать"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D06","left":"fall through","right":"сорваться"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D07","left":"make the most of","right":"извлечь максимум пользы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('715be9f4-2443-565f-b57a-66229982fe5e', '024f9113-bc88-54d6-ae2c-55e265192998', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D08","is_correct":true,"text":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('862206f5-aabd-5002-8c30-c3b0525fe10f', '024f9113-bc88-54d6-ae2c-55e265192998', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы не ограничивали выбор и извлекли максимум из задержки, исследовав район, который иначе пропустили бы.","target_language":"en","word_bank":["We","kept","our","options","open","and","made","the","most","of","the","delay","by","exploring","a","neighbourhood","we","would","otherwise","have","missed","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('585f6af3-f62c-5e13-82d8-fb944dc92320', '024f9113-bc88-54d6-ae2c-55e265192998', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"work around","instruction":"Выберите подходящее слово.","options":["work around","fall through","something has come up"],"sentence_template":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d3566c8-d6d9-5140-b1a2-52c1fc00397b', '024f9113-bc88-54d6-ae2c-55e265192998', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","kept","our","options","open","and","made","the","most","of","the","delay","by","exploring","a","neighbourhood","we","would","otherwise","have","missed","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","missed","have","otherwise","would","we","neighbourhood","a","exploring","by","delay","the","of","most","the","made","and","open","options","our","kept","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b60c31ec-68d6-5bc6-93af-5e93d8372bf0', '024f9113-bc88-54d6-ae2c-55e265192998', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd14a380-95f4-5824-a133-7855b811233a', '024f9113-bc88-54d6-ae2c-55e265192998', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Мы не ограничивали выбор и извлекли максимум из задержки, исследовав район, который иначе пропустили бы. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ac9ea8b-1da4-5c91-891e-8bbba709d9f5', '024f9113-bc88-54d6-ae2c-55e265192998', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed.","translation":"Мы не ограничивали выбор и извлекли максимум из задержки, исследовав район, который иначе пропустили бы.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Confirming Flexible Arrangements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04b0766d-135e-5814-a3d3-b983a33d48d7', '024f9113-bc88-54d6-ae2c-55e265192998', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“work around” means find a practical way past a problem.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D11","is_correct":true,"text":"find a practical way past a problem"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D12","is_correct":false,"text":"without advance planning"},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D13","is_correct":false,"text":"make a provisional arrangement"}],"word":"work around"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('842321a9-a7d4-5714-b72a-7a6d5c037b0e', '024f9113-bc88-54d6-ae2c-55e265192998', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed.","explanation":"The missing everyday expression is “work around”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"work around","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D14","is_correct":true},{"audio_text":"pencil something in","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D15","is_correct":false},{"audio_text":"make the most of","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D16","is_correct":false}],"sentence_template":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('635ec167-6f94-5377-a9a6-df1f36e81170', '024f9113-bc88-54d6-ae2c-55e265192998', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"work around","explanation":"The recording uses “work around” naturally in context.","hint_prefix":"work","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('065f135b-7266-542f-ab57-5a12f0e54946', '024f9113-bc88-54d6-ae2c-55e265192998', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"something has come up","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D17","text":"something has come up"},{"audio_text":"keep one’s options open","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D18","text":"keep one’s options open"},{"audio_text":"work around","id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D19","text":"work around"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ba18a4b-1c14-5ef3-9598-d7b3f3636692', '024f9113-bc88-54d6-ae2c-55e265192998', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Confirming Flexible Arrangements”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D20","is_correct":true,"text":"We kept our options open and made the most of the delay by exploring a neighbourhood we would otherwise have missed."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_CHANGING_PLANS_AND_SPONTANEOUS_DECISIONS_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('693525d4-a564-5fb6-aec8-6566907c7b3b', '024f9113-bc88-54d6-ae2c-55e265192998', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae5df3f6-c012-5555-92a0-6f709db1fc8c', 'en', 'something has come up', 'возникли обстоятельства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc55acb-5316-5e29-b062-13dbd04e70d4', 'en', 'keep one’s options open', 'не ограничивать выбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7bc70930-571d-54b6-9e32-1e5d127b027b', 'en', 'work around', 'обойти затруднение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb78a60e-844a-58fc-bec9-f566a0cd0b5b', 'en', 'on the spur of the moment', 'под влиянием момента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25dcc2b8-b662-51e5-9b6d-b2bb3e209211', 'en', 'pencil something in', 'предварительно записать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58e3155e-bee3-5f1e-9e19-28e3ae6fef19', 'en', 'fall through', 'сорваться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd665666-a83d-5ec1-8295-6a3de726503f', 'en', 'make the most of', 'извлечь максимум пользы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae5df3f6-c012-5555-92a0-6f709db1fc8c', 'en', 'something has come up', 'возникли обстоятельства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc55acb-5316-5e29-b062-13dbd04e70d4', 'en', 'keep one’s options open', 'не ограничивать выбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7bc70930-571d-54b6-9e32-1e5d127b027b', 'en', 'work around', 'обойти затруднение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb78a60e-844a-58fc-bec9-f566a0cd0b5b', 'en', 'on the spur of the moment', 'под влиянием момента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25dcc2b8-b662-51e5-9b6d-b2bb3e209211', 'en', 'pencil something in', 'предварительно записать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58e3155e-bee3-5f1e-9e19-28e3ae6fef19', 'en', 'fall through', 'сорваться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd665666-a83d-5ec1-8295-6a3de726503f', 'en', 'make the most of', 'извлечь максимум пользы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae5df3f6-c012-5555-92a0-6f709db1fc8c', 'en', 'something has come up', 'возникли обстоятельства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc55acb-5316-5e29-b062-13dbd04e70d4', 'en', 'keep one’s options open', 'не ограничивать выбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7bc70930-571d-54b6-9e32-1e5d127b027b', 'en', 'work around', 'обойти затруднение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb78a60e-844a-58fc-bec9-f566a0cd0b5b', 'en', 'on the spur of the moment', 'под влиянием момента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25dcc2b8-b662-51e5-9b6d-b2bb3e209211', 'en', 'pencil something in', 'предварительно записать', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58e3155e-bee3-5f1e-9e19-28e3ae6fef19', 'en', 'fall through', 'сорваться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd665666-a83d-5ec1-8295-6a3de726503f', 'en', 'make the most of', 'извлечь максимум пользы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, 'dec799ad-d274-5770-ba47-dd9da407f9a5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'something has come up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, 'dec799ad-d274-5770-ba47-dd9da407f9a5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'keep one’s options open' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, 'dec799ad-d274-5770-ba47-dd9da407f9a5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'work around' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, 'dec799ad-d274-5770-ba47-dd9da407f9a5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'on the spur of the moment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, 'dec799ad-d274-5770-ba47-dd9da407f9a5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'pencil something in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, 'dec799ad-d274-5770-ba47-dd9da407f9a5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'fall through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, 'dec799ad-d274-5770-ba47-dd9da407f9a5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'make the most of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '4b92e063-8fbf-52ac-ab81-73195dd93909', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'something has come up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '4b92e063-8fbf-52ac-ab81-73195dd93909', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'keep one’s options open' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '4b92e063-8fbf-52ac-ab81-73195dd93909', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'work around' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '4b92e063-8fbf-52ac-ab81-73195dd93909', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'on the spur of the moment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '4b92e063-8fbf-52ac-ab81-73195dd93909', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'pencil something in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '4b92e063-8fbf-52ac-ab81-73195dd93909', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fall through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '4b92e063-8fbf-52ac-ab81-73195dd93909', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'make the most of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '024f9113-bc88-54d6-ae2c-55e265192998', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'something has come up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '024f9113-bc88-54d6-ae2c-55e265192998', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'keep one’s options open' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '024f9113-bc88-54d6-ae2c-55e265192998', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'work around' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '024f9113-bc88-54d6-ae2c-55e265192998', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'on the spur of the moment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '024f9113-bc88-54d6-ae2c-55e265192998', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'pencil something in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '024f9113-bc88-54d6-ae2c-55e265192998', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fall through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '693525d4-a564-5fb6-aec8-6566907c7b3b', id, '024f9113-bc88-54d6-ae2c-55e265192998', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'make the most of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
