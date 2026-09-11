-- Track: C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d33092b1-652f-5377-8179-46d10688becc', 'C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING', 'Быстрые повседневные разговоры и скрытый смысл', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Быстрые повседневные разговоры и скрытый смысл» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Fast Everyday Conversations and Hidden Meaning","ru":"Быстрые повседневные разговоры и скрытый смысл"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for fast everyday conversations and hidden meaning and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Быстрые повседневные разговоры и скрытый смысл» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('40e342fe-a080-5bd3-95e3-cf3426bdea8b', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Keeping Up with Natural Conversation","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('751f30c9-1266-5252-9376-55846896e882', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D01","left":"read between the lines","right":"читать между строк"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D02","left":"have second thoughts","right":"начать сомневаться"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D03","left":"not exactly thrilled","right":"не особенно в восторге"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D04","left":"come across as","right":"производить впечатление"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D05","left":"take the hint","right":"понять намёк"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D06","left":"leave it there","right":"на этом остановиться"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D07","left":"fair enough","right":"ладно, справедливо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e3a0318-2b12-5ca6-8fb8-461b414b3712', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D08","is_correct":true,"text":"If you read between the lines, she is having second thoughts, although she is trying not to disappoint anyone."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdbc588c-1108-539c-9517-9091f09358c4', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you read between the lines, she is having second thoughts, although she is trying not to disappoint anyone.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Если читать между строк, она начала сомневаться, хотя старается никого не разочаровать.","target_language":"en","word_bank":["If","you","read","between","the","lines",",","she","is","having","second","thoughts",",","although","she","is","trying","not","to","disappoint","anyone","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6d83299-ee30-5fa8-af10-8c4d4121f997', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"read between the lines","instruction":"Выберите подходящее слово.","options":["read between the lines","come across as","leave it there"],"sentence_template":"If you ___, she is having second thoughts, although she is trying not to disappoint anyone."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bc78824-2cf1-5bb9-b98c-60514b177a3f', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["If","you","read","between","the","lines",",","she","is","having","second","thoughts",",","although","she","is","trying","not","to","disappoint","anyone","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","anyone","disappoint","to","not","trying","is","she","although",",","thoughts","second","having","is","she",",","lines","the","between","read","you","If"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0a50b26-0a2f-5749-96a5-ae6712f3beb3', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you read between the lines, she is having second thoughts, although she is trying not to disappoint anyone. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eab45e5c-0bfa-5444-83dc-1d3b118c3b38', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you read between the lines, she is having second thoughts, although she is trying not to disappoint anyone. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Если читать между строк, она начала сомневаться, хотя старается никого не разочаровать. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97fce9d7-9022-5051-9fa7-95bb0d219c11', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"If you read between the lines, she is having second thoughts, although she is trying not to disappoint anyone.","translation":"Если читать между строк, она начала сомневаться, хотя старается никого не разочаровать.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Keeping Up with Natural Conversation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58cc5518-ab9e-5a43-b43f-060a6475dbee', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“read between the lines” means understand meaning that is not directly stated.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D11","is_correct":true,"text":"understand meaning that is not directly stated"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D12","is_correct":false,"text":"reconsider a decision after initially agreeing"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D13","is_correct":false,"text":"a restrained way of expressing displeasure"}],"word":"read between the lines"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b914b3d-607c-5387-9104-961d0520e145', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you read between the lines, she is having second thoughts, although she is trying not to disappoint anyone.","explanation":"The missing everyday expression is “read between the lines”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"read between the lines","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D14","is_correct":true},{"audio_text":"not exactly thrilled","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D15","is_correct":false},{"audio_text":"take the hint","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D16","is_correct":false}],"sentence_template":"If you ___, she is having second thoughts, although she is trying not to disappoint anyone."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa91cba6-6726-5e83-a035-f4bb564e1356', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"read between the lines","explanation":"The recording uses “read between the lines” naturally in context.","hint_prefix":"read","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"If you ___, she is having second thoughts, although she is trying not to disappoint anyone."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dd955f4-6cc3-5cb4-af56-24cad72e6c44', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"read between the lines","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D17","text":"read between the lines"},{"audio_text":"have second thoughts","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D18","text":"have second thoughts"},{"audio_text":"not exactly thrilled","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D19","text":"not exactly thrilled"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8fc03b48-7497-56a9-849c-89a2b07e11a6', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Keeping Up with Natural Conversation”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D20","is_correct":true,"text":"If you read between the lines, she is having second thoughts, although she is trying not to disappoint anyone."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d33092b1-652f-5377-8179-46d10688becc', '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f8b192ac-0de5-5337-a77f-26231b141b7e', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Reading Between the Lines","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7eb4f9ee-61e6-569e-a865-57cd4da53222', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D01","left":"read between the lines","right":"читать между строк"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D02","left":"have second thoughts","right":"начать сомневаться"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D03","left":"not exactly thrilled","right":"не особенно в восторге"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D04","left":"come across as","right":"производить впечатление"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D05","left":"take the hint","right":"понять намёк"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D06","left":"leave it there","right":"на этом остановиться"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D07","left":"fair enough","right":"ладно, справедливо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a29a4d9b-234f-5f32-a8b0-859b66e770a3', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D08","is_correct":true,"text":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d959e537-2748-523e-b2cd-7e29c213dfc7', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Он сказал, что «не особенно в восторге», и это прозвучало как сдержанное раздражение, а не лёгкое разочарование.","target_language":"en","word_bank":["He","said","he","was","“","not","exactly","thrilled",",”","which","came","across","as","restrained","irritation","rather","than","mild","disappointment","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43682ea9-14f2-5b42-8766-7d526f3b7f40', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"have second thoughts","instruction":"Выберите подходящее слово.","options":["have second thoughts","take the hint","fair enough"],"sentence_template":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad7eb11c-a65e-5a1e-ad13-c555aaee0d69', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","said","he","was","“","not","exactly","thrilled",",”","which","came","across","as","restrained","irritation","rather","than","mild","disappointment","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","disappointment","mild","than","rather","irritation","restrained","as","across","came","which",",”","thrilled","exactly","not","“","was","he","said","He"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1773d21-388b-52d1-afcd-a44b19278d72', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17aaea31-fe0e-5429-aad0-6fd42cb0dad5', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Он сказал, что «не особенно в восторге», и это прозвучало как сдержанное раздражение, а не лёгкое разочарование. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b2d9003-dd2d-5166-98b8-2cadea2c43fd', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment.","translation":"Он сказал, что «не особенно в восторге», и это прозвучало как сдержанное раздражение, а не лёгкое разочарование.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Reading Between the Lines"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4e936aa-b51d-5d23-a117-ee75376886d9', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“have second thoughts” means reconsider a decision after initially agreeing.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D11","is_correct":true,"text":"reconsider a decision after initially agreeing"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D12","is_correct":false,"text":"a restrained way of expressing displeasure"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D13","is_correct":false,"text":"seem to other people in a particular way"}],"word":"have second thoughts"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63d8cc88-4679-5f0e-9861-9de77e31ffaa', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment.","explanation":"The missing everyday expression is “have second thoughts”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"have second thoughts","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D14","is_correct":true},{"audio_text":"come across as","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D15","is_correct":false},{"audio_text":"leave it there","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D16","is_correct":false}],"sentence_template":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('560def6a-14d7-5fc6-8cb6-d6177102695c', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"have second thoughts","explanation":"The recording uses “have second thoughts” naturally in context.","hint_prefix":"have","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c181477-dc20-5797-84c8-e4c190083e0b', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"read between the lines","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D17","text":"read between the lines"},{"audio_text":"have second thoughts","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D18","text":"have second thoughts"},{"audio_text":"not exactly thrilled","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D19","text":"not exactly thrilled"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9a24226-e494-5040-be53-a594fec18b9d', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Reading Between the Lines”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D20","is_correct":true,"text":"He said he was “not exactly thrilled,” which came across as restrained irritation rather than mild disappointment."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d33092b1-652f-5377-8179-46d10688becc', 'f8b192ac-0de5-5337-a77f-26231b141b7e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b166cbc7-199f-5555-96fc-da4dee3e126e', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Shadowing Subtle Responses","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76ffb860-eab0-55c6-aeeb-457101506013', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D01","left":"read between the lines","right":"читать между строк"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D02","left":"have second thoughts","right":"начать сомневаться"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D03","left":"not exactly thrilled","right":"не особенно в восторге"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D04","left":"come across as","right":"производить впечатление"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D05","left":"take the hint","right":"понять намёк"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D06","left":"leave it there","right":"на этом остановиться"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D07","left":"fair enough","right":"ладно, справедливо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4bae0a2-81ab-546f-bdf9-0456efa2e53e', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D08","is_correct":true,"text":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dc04141-f925-543b-a7a9-585afd31bf49', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я понял намёк и предложил на этом остановиться; она ответила «ладно», но её тон всё ещё был довольно отстранённым.","target_language":"en","word_bank":["I","took","the","hint","and","suggested","we","leave","it","there",";","she","replied",",","“","Fair","enough",",”","but","her","tone","was","still","rather","distant","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f1449a0-49fc-56f0-a0a8-e991d32c13e4', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"not exactly thrilled","instruction":"Выберите подходящее слово.","options":["not exactly thrilled","leave it there","read between the lines"],"sentence_template":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fc3f9a7-6198-55cc-b98c-43623beca38b', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","took","the","hint","and","suggested","we","leave","it","there",";","she","replied",",","“","Fair","enough",",”","but","her","tone","was","still","rather","distant","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","distant","rather","still","was","tone","her","but",",”","enough","Fair","“",",","replied","she",";","there","it","leave","we","suggested","and","hint","the","took","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fe27682-7ee7-5aab-98fc-be7f940be019', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48155645-4fe5-5a42-8712-977c6c574db9', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я понял намёк и предложил на этом остановиться; она ответила «ладно», но её тон всё ещё был довольно отстранённым. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d316d225-1fb0-5243-a3b3-9e548be406c0', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant.","translation":"Я понял намёк и предложил на этом остановиться; она ответила «ладно», но её тон всё ещё был довольно отстранённым.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Shadowing Subtle Responses"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79272e6a-f36b-5675-bbba-882bc287f512', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“not exactly thrilled” means a restrained way of expressing displeasure.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D11","is_correct":true,"text":"a restrained way of expressing displeasure"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D12","is_correct":false,"text":"seem to other people in a particular way"},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D13","is_correct":false,"text":"recognise an indirect suggestion"}],"word":"not exactly thrilled"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc95fe14-ec54-57af-89f1-a418889287e9', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant.","explanation":"The missing everyday expression is “not exactly thrilled”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"not exactly thrilled","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D14","is_correct":true},{"audio_text":"take the hint","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D15","is_correct":false},{"audio_text":"fair enough","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D16","is_correct":false}],"sentence_template":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cefbb9a-c0e6-529f-a6b5-66439df58e63', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"not exactly thrilled","explanation":"The recording uses “not exactly thrilled” naturally in context.","hint_prefix":"not ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd6e1e4e-d44a-535d-9563-bef431a28746', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"read between the lines","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D17","text":"read between the lines"},{"audio_text":"have second thoughts","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D18","text":"have second thoughts"},{"audio_text":"not exactly thrilled","id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D19","text":"not exactly thrilled"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb714bd2-653c-5f23-a21c-79e70fe88933', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Shadowing Subtle Responses”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D20","is_correct":true,"text":"I took the hint and suggested we leave it there; she replied, “Fair enough,” but her tone was still rather distant."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_FAST_EVERYDAY_CONVERSATIONS_AND_HIDDEN_MEANING_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d33092b1-652f-5377-8179-46d10688becc', 'b166cbc7-199f-5555-96fc-da4dee3e126e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a23e67cb-b2f5-534c-994b-52a059a8637d', 'en', 'read between the lines', 'читать между строк', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ebd7f34f-f9d0-56e7-bb23-311e17d839a1', 'en', 'have second thoughts', 'начать сомневаться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91eb3f4f-8fb7-5406-9939-9e6f4c4a5c2a', 'en', 'not exactly thrilled', 'не особенно в восторге', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('369eb51a-7f15-5dfe-b3b0-7472895a0ffb', 'en', 'come across as', 'производить впечатление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e935819-bbbd-59cd-b0e7-4c496a78bcf2', 'en', 'take the hint', 'понять намёк', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4aa1f87c-c07c-55ae-867a-1c93f8093a71', 'en', 'leave it there', 'на этом остановиться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e168223-98e1-5c54-af9f-4b67f347e34b', 'en', 'fair enough', 'ладно, справедливо', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a23e67cb-b2f5-534c-994b-52a059a8637d', 'en', 'read between the lines', 'читать между строк', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ebd7f34f-f9d0-56e7-bb23-311e17d839a1', 'en', 'have second thoughts', 'начать сомневаться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91eb3f4f-8fb7-5406-9939-9e6f4c4a5c2a', 'en', 'not exactly thrilled', 'не особенно в восторге', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('369eb51a-7f15-5dfe-b3b0-7472895a0ffb', 'en', 'come across as', 'производить впечатление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e935819-bbbd-59cd-b0e7-4c496a78bcf2', 'en', 'take the hint', 'понять намёк', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4aa1f87c-c07c-55ae-867a-1c93f8093a71', 'en', 'leave it there', 'на этом остановиться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e168223-98e1-5c54-af9f-4b67f347e34b', 'en', 'fair enough', 'ладно, справедливо', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a23e67cb-b2f5-534c-994b-52a059a8637d', 'en', 'read between the lines', 'читать между строк', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ebd7f34f-f9d0-56e7-bb23-311e17d839a1', 'en', 'have second thoughts', 'начать сомневаться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91eb3f4f-8fb7-5406-9939-9e6f4c4a5c2a', 'en', 'not exactly thrilled', 'не особенно в восторге', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('369eb51a-7f15-5dfe-b3b0-7472895a0ffb', 'en', 'come across as', 'производить впечатление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e935819-bbbd-59cd-b0e7-4c496a78bcf2', 'en', 'take the hint', 'понять намёк', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4aa1f87c-c07c-55ae-867a-1c93f8093a71', 'en', 'leave it there', 'на этом остановиться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e168223-98e1-5c54-af9f-4b67f347e34b', 'en', 'fair enough', 'ладно, справедливо', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'read between the lines' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'have second thoughts' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'not exactly thrilled' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'come across as' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'take the hint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'leave it there' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, '40e342fe-a080-5bd3-95e3-cf3426bdea8b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'fair enough' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'f8b192ac-0de5-5337-a77f-26231b141b7e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'read between the lines' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'f8b192ac-0de5-5337-a77f-26231b141b7e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'have second thoughts' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'f8b192ac-0de5-5337-a77f-26231b141b7e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'not exactly thrilled' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'f8b192ac-0de5-5337-a77f-26231b141b7e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'come across as' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'f8b192ac-0de5-5337-a77f-26231b141b7e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'take the hint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'f8b192ac-0de5-5337-a77f-26231b141b7e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'leave it there' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'f8b192ac-0de5-5337-a77f-26231b141b7e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'fair enough' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'b166cbc7-199f-5555-96fc-da4dee3e126e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'read between the lines' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'b166cbc7-199f-5555-96fc-da4dee3e126e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'have second thoughts' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'b166cbc7-199f-5555-96fc-da4dee3e126e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'not exactly thrilled' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'b166cbc7-199f-5555-96fc-da4dee3e126e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'come across as' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'b166cbc7-199f-5555-96fc-da4dee3e126e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'take the hint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'b166cbc7-199f-5555-96fc-da4dee3e126e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'leave it there' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd33092b1-652f-5377-8179-46d10688becc', id, 'b166cbc7-199f-5555-96fc-da4dee3e126e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'fair enough' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
