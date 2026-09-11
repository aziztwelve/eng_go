-- Track: C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', 'C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS', 'Отношения, эмоции и деликатные разговоры', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Отношения, эмоции и деликатные разговоры» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Relationships, Emotions and Delicate Conversations","ru":"Отношения, эмоции и деликатные разговоры"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for relationships, emotions and delicate conversations and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Отношения, эмоции и деликатные разговоры» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('651959c8-dea7-52db-bd16-5dcb1e133480', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Recognising Unspoken Feelings","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('589088cd-2a9b-54a3-958c-91aa34ea0a6a', '651959c8-dea7-52db-bd16-5dcb1e133480', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D01","left":"bottle something up","right":"держать в себе"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D02","left":"clear the air","right":"прояснить ситуацию"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D03","left":"strike a nerve","right":"задеть за живое"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D04","left":"give someone space","right":"дать человеку время и пространство"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D05","left":"come from a good place","right":"исходить из добрых намерений"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D06","left":"take something personally","right":"принять на свой счёт"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D07","left":"hear someone out","right":"выслушать до конца"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e23eac3-ef0c-55d6-8802-e4f020b4d850', '651959c8-dea7-52db-bd16-5dcb1e133480', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D08","is_correct":true,"text":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3810d34-7717-5def-ba34-9245c7c5bc3f', '651959c8-dea7-52db-bd16-5dcb1e133480', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я держал это в себе несколько недель, поэтому малейшее замечание задело за живое, хотя не было личным.","target_language":"en","word_bank":["I","had","been","bottling","it","up","for","weeks",",","so","the","smallest","comment","struck","a","nerve","even","though","it","was","not","meant","personally","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f64dd39-6755-564d-942b-115f4709ad65', '651959c8-dea7-52db-bd16-5dcb1e133480', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"bottle something up","instruction":"Выберите подходящее слово.","options":["bottle something up","give someone space","take something personally"],"sentence_template":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9db32269-ce41-5558-a566-da3907634ae4', '651959c8-dea7-52db-bd16-5dcb1e133480', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","had","been","bottling","it","up","for","weeks",",","so","the","smallest","comment","struck","a","nerve","even","though","it","was","not","meant","personally","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","personally","meant","not","was","it","though","even","nerve","a","struck","comment","smallest","the","so",",","weeks","for","up","it","bottling","been","had","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9215208e-8c11-5f0a-a7a5-bc91415ba7a8', '651959c8-dea7-52db-bd16-5dcb1e133480', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db5a527c-4a26-5dc9-affc-3e9a1306b796', '651959c8-dea7-52db-bd16-5dcb1e133480', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я держал это в себе несколько недель, поэтому малейшее замечание задело за живое, хотя не было личным. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d966df7-2f3b-5b3b-a5f8-3f5279e6239e', '651959c8-dea7-52db-bd16-5dcb1e133480', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally.","translation":"Я держал это в себе несколько недель, поэтому малейшее замечание задело за живое, хотя не было личным.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Recognising Unspoken Feelings"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d3ef2d6-f97b-5953-b9ca-a519233d58ff', '651959c8-dea7-52db-bd16-5dcb1e133480', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“bottle something up” means suppress feelings instead of expressing them.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D11","is_correct":true,"text":"suppress feelings instead of expressing them"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D12","is_correct":false,"text":"discuss tension openly to improve a relationship"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D13","is_correct":false,"text":"cause a strong emotional reaction"}],"word":"bottle something up"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4b9548d-ac34-51dc-a66b-c9b3bc70a1fa', '651959c8-dea7-52db-bd16-5dcb1e133480', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally.","explanation":"The missing everyday expression is “bottle something up”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"bottle something up","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D14","is_correct":true},{"audio_text":"strike a nerve","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D15","is_correct":false},{"audio_text":"come from a good place","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D16","is_correct":false}],"sentence_template":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73803394-449c-5a4f-bda6-f37550abeee6', '651959c8-dea7-52db-bd16-5dcb1e133480', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"bottle something up","explanation":"The recording uses “bottle something up” naturally in context.","hint_prefix":"bott","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcf53e13-7471-592b-ab22-1e50b52596bb', '651959c8-dea7-52db-bd16-5dcb1e133480', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"bottle something up","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D17","text":"bottle something up"},{"audio_text":"clear the air","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D18","text":"clear the air"},{"audio_text":"strike a nerve","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D19","text":"strike a nerve"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a078bd5c-d71d-57dc-bab2-3015e7f707c8', '651959c8-dea7-52db-bd16-5dcb1e133480', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Recognising Unspoken Feelings”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D20","is_correct":true,"text":"I had been bottling it up for weeks, so the smallest comment struck a nerve even though it was not meant personally."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', '651959c8-dea7-52db-bd16-5dcb1e133480', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Raising a Sensitive Issue","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccbbbb0e-3ecb-5f49-9b0d-4923734ea59b', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D01","left":"bottle something up","right":"держать в себе"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D02","left":"clear the air","right":"прояснить ситуацию"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D03","left":"strike a nerve","right":"задеть за живое"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D04","left":"give someone space","right":"дать человеку время и пространство"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D05","left":"come from a good place","right":"исходить из добрых намерений"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D06","left":"take something personally","right":"принять на свой счёт"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D07","left":"hear someone out","right":"выслушать до конца"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('723820df-537b-5262-9218-bd08379fd6be', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D08","is_correct":true,"text":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a63f776-e924-53ee-888a-d636f678b56d', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я знаю, что совет исходил из добрых намерений, но мне нужно, чтобы ты выслушал меня до конца, прежде чем объяснять, что мне делать.","target_language":"en","word_bank":["I","know","the","advice","came","from","a","good","place",",","but","I","need","you","to","hear","me","out","before","explaining","what","you","think","I","should","do","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16368464-e2b2-5623-8d7d-cb854bbc236f', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"clear the air","instruction":"Выберите подходящее слово.","options":["clear the air","come from a good place","hear someone out"],"sentence_template":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e9242a4-e69d-5a13-9bc6-dec9456b4ade', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","know","the","advice","came","from","a","good","place",",","but","I","need","you","to","hear","me","out","before","explaining","what","you","think","I","should","do","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","do","should","I","think","you","what","explaining","before","out","me","hear","to","you","need","I","but",",","place","good","a","from","came","advice","the","know","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90e0011a-18d8-5a1f-87ff-38fd8d8d3485', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd9475fb-7937-591a-ab2f-3af7f67ff06d', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я знаю, что совет исходил из добрых намерений, но мне нужно, чтобы ты выслушал меня до конца, прежде чем объяснять, что мне делать. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('256b2b59-71ae-519f-84fa-3f54a8649a71', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do.","translation":"Я знаю, что совет исходил из добрых намерений, но мне нужно, чтобы ты выслушал меня до конца, прежде чем объяснять, что мне делать.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Raising a Sensitive Issue"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('989a0a8b-9fb9-5219-a641-fecb0eaf47e0', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“clear the air” means discuss tension openly to improve a relationship.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D11","is_correct":true,"text":"discuss tension openly to improve a relationship"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D12","is_correct":false,"text":"cause a strong emotional reaction"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D13","is_correct":false,"text":"allow time and privacy to process feelings"}],"word":"clear the air"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d507afa-b124-55ed-9eac-348304385b3a', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do.","explanation":"The missing everyday expression is “clear the air”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"clear the air","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D14","is_correct":true},{"audio_text":"give someone space","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D15","is_correct":false},{"audio_text":"take something personally","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D16","is_correct":false}],"sentence_template":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e539376-601e-5611-8b19-23d13d8eff92', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"clear the air","explanation":"The recording uses “clear the air” naturally in context.","hint_prefix":"clea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1b1a017-bed7-5159-9511-6bc49c45b78d', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"bottle something up","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D17","text":"bottle something up"},{"audio_text":"clear the air","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D18","text":"clear the air"},{"audio_text":"strike a nerve","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D19","text":"strike a nerve"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33dda9a4-ab17-5eef-ad9c-c94b981e2cc8', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Raising a Sensitive Issue”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D20","is_correct":true,"text":"I know the advice came from a good place, but I need you to hear me out before explaining what you think I should do."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7b20ffba-743b-5f90-a623-b6a0fece8fd4', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Repairing the Relationship","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3d80613-9855-5520-8277-dbe656e288ec', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D01","left":"bottle something up","right":"держать в себе"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D02","left":"clear the air","right":"прояснить ситуацию"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D03","left":"strike a nerve","right":"задеть за живое"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D04","left":"give someone space","right":"дать человеку время и пространство"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D05","left":"come from a good place","right":"исходить из добрых намерений"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D06","left":"take something personally","right":"принять на свой счёт"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D07","left":"hear someone out","right":"выслушать до конца"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40a0abc2-505a-5623-995b-f47d74ef04ea', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D08","is_correct":true,"text":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d4d9b98-0c61-5c6e-bdfe-80d5a39792fd', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы прояснили ситуацию, не решив всего, а затем согласились дать друг другу пространство вместо требования немедленного ответа.","target_language":"en","word_bank":["We","cleared","the","air","without","resolving","everything",",","and","then","agreed","to","give","each","other","space","rather","than","force","an","immediate","answer","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59147daf-ab57-5e07-b748-7c0b72c08d4b', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"strike a nerve","instruction":"Выберите подходящее слово.","options":["strike a nerve","take something personally","bottle something up"],"sentence_template":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67da88b9-db8a-5e4e-b0cd-3e25b2477ad0', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","cleared","the","air","without","resolving","everything",",","and","then","agreed","to","give","each","other","space","rather","than","force","an","immediate","answer","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","answer","immediate","an","force","than","rather","space","other","each","give","to","agreed","then","and",",","everything","resolving","without","air","the","cleared","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7f98083-f318-53bb-a34f-98ee992ad852', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('839fdca7-199a-5ee8-915d-425d71e234a5', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Мы прояснили ситуацию, не решив всего, а затем согласились дать друг другу пространство вместо требования немедленного ответа. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('878f6370-70df-58d1-bf33-f87386a1e4f1', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer.","translation":"Мы прояснили ситуацию, не решив всего, а затем согласились дать друг другу пространство вместо требования немедленного ответа.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Repairing the Relationship"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55f24165-886d-58cc-908a-13f4d6c055f5', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“strike a nerve” means cause a strong emotional reaction.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D11","is_correct":true,"text":"cause a strong emotional reaction"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D12","is_correct":false,"text":"allow time and privacy to process feelings"},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D13","is_correct":false,"text":"be motivated by care despite imperfect delivery"}],"word":"strike a nerve"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dec01b93-7f4f-5f83-9b16-ecd917c0adad', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer.","explanation":"The missing everyday expression is “strike a nerve”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"strike a nerve","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D14","is_correct":true},{"audio_text":"come from a good place","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D15","is_correct":false},{"audio_text":"hear someone out","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D16","is_correct":false}],"sentence_template":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7babbc8b-5dc2-5d30-942f-38b853705c59', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"strike a nerve","explanation":"The recording uses “strike a nerve” naturally in context.","hint_prefix":"stri","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73723832-8d7a-5ec2-b6e4-e9bb94ebaa19', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"bottle something up","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D17","text":"bottle something up"},{"audio_text":"clear the air","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D18","text":"clear the air"},{"audio_text":"strike a nerve","id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D19","text":"strike a nerve"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39a641b4-82ea-5639-a46b-3eed30745a3b', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Repairing the Relationship”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D20","is_correct":true,"text":"We cleared the air without resolving everything, and then agreed to give each other space rather than force an immediate answer."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_RELATIONSHIPS_EMOTIONS_AND_DELICATE_CONVERSATIONS_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394c594-01d0-58aa-94ed-711ec35f1c87', 'en', 'bottle something up', 'держать в себе', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9bcbd227-c8b7-5909-9cc8-d7e3edcd428a', 'en', 'clear the air', 'прояснить ситуацию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f818394-ddd5-5830-89a3-634b729b847d', 'en', 'strike a nerve', 'задеть за живое', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b00c8673-ba7c-5d5d-9ebc-480ad0737777', 'en', 'give someone space', 'дать человеку время и пространство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('734e6fb1-e442-5f3c-ae79-6dd5477cbd45', 'en', 'come from a good place', 'исходить из добрых намерений', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31aac22c-2f45-5ddc-93b1-4f367bf32dfb', 'en', 'take something personally', 'принять на свой счёт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9d1f17c-0939-5a37-868f-78cb83b5f2e0', 'en', 'hear someone out', 'выслушать до конца', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394c594-01d0-58aa-94ed-711ec35f1c87', 'en', 'bottle something up', 'держать в себе', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9bcbd227-c8b7-5909-9cc8-d7e3edcd428a', 'en', 'clear the air', 'прояснить ситуацию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f818394-ddd5-5830-89a3-634b729b847d', 'en', 'strike a nerve', 'задеть за живое', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b00c8673-ba7c-5d5d-9ebc-480ad0737777', 'en', 'give someone space', 'дать человеку время и пространство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('734e6fb1-e442-5f3c-ae79-6dd5477cbd45', 'en', 'come from a good place', 'исходить из добрых намерений', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31aac22c-2f45-5ddc-93b1-4f367bf32dfb', 'en', 'take something personally', 'принять на свой счёт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9d1f17c-0939-5a37-868f-78cb83b5f2e0', 'en', 'hear someone out', 'выслушать до конца', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394c594-01d0-58aa-94ed-711ec35f1c87', 'en', 'bottle something up', 'держать в себе', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9bcbd227-c8b7-5909-9cc8-d7e3edcd428a', 'en', 'clear the air', 'прояснить ситуацию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f818394-ddd5-5830-89a3-634b729b847d', 'en', 'strike a nerve', 'задеть за живое', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b00c8673-ba7c-5d5d-9ebc-480ad0737777', 'en', 'give someone space', 'дать человеку время и пространство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('734e6fb1-e442-5f3c-ae79-6dd5477cbd45', 'en', 'come from a good place', 'исходить из добрых намерений', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31aac22c-2f45-5ddc-93b1-4f367bf32dfb', 'en', 'take something personally', 'принять на свой счёт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9d1f17c-0939-5a37-868f-78cb83b5f2e0', 'en', 'hear someone out', 'выслушать до конца', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '651959c8-dea7-52db-bd16-5dcb1e133480', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'bottle something up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '651959c8-dea7-52db-bd16-5dcb1e133480', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'clear the air' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '651959c8-dea7-52db-bd16-5dcb1e133480', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'strike a nerve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '651959c8-dea7-52db-bd16-5dcb1e133480', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'give someone space' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '651959c8-dea7-52db-bd16-5dcb1e133480', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'come from a good place' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '651959c8-dea7-52db-bd16-5dcb1e133480', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'take something personally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '651959c8-dea7-52db-bd16-5dcb1e133480', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'hear someone out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'bottle something up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'clear the air' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'strike a nerve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'give someone space' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'come from a good place' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'take something personally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, 'e2ef6cb6-0953-58a1-a6ab-33a9550b2de5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'hear someone out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'bottle something up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'clear the air' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'strike a nerve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'give someone space' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'come from a good place' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'take something personally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ce8408c8-ff0b-5cd5-98b7-25b3ea2727d0', id, '7b20ffba-743b-5f90-a623-b6a0fece8fd4', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'hear someone out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
