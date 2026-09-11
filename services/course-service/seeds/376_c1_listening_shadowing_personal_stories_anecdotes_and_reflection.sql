-- Track: C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2a877036-45ae-5279-bd74-31243daf93c7', 'C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION', 'Личные истории, случаи и размышления', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Личные истории, случаи и размышления» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Personal Stories, Anecdotes and Reflection","ru":"Личные истории, случаи и размышления"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for personal stories, anecdotes and reflection and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Личные истории, случаи и размышления» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e3fae7ed-7f29-508b-9693-c636d91887b5', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Following a Detailed Anecdote","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6abf7a2a-6c5d-505c-902b-ca8aa7634a05', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D01","left":"to cut a long story short","right":"короче говоря"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D02","left":"little did I know","right":"я и не подозревал"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D03","left":"in hindsight","right":"оглядываясь назад"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D04","left":"turning point","right":"поворотный момент"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D05","left":"it dawned on me","right":"меня осенило"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D06","left":"live to regret","right":"впоследствии пожалеть"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D07","left":"funny thing is","right":"забавно то, что"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70b530b9-f1ea-5ead-b3a5-5c5352393797', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D08","is_correct":true,"text":"Little did I know that missing that train would become the turning point of the entire trip."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5270cbc6-bd71-5408-881b-b2e224b0b0ab', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Little did I know that missing that train would become the turning point of the entire trip.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я и не подозревал, что опоздание на тот поезд станет поворотным моментом всего путешествия.","target_language":"en","word_bank":["Little","did","I","know","that","missing","that","train","would","become","the","turning","point","of","the","entire","trip","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc7c2bb5-8920-501d-b920-f17220f60867', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"to cut a long story short","instruction":"Выберите подходящее слово.","options":["to cut a long story short","turning point","live to regret"],"sentence_template":"Little did I know that missing that train would become the turning point of the entire trip."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('222ef1fc-903b-5ee3-998b-a069b920e9b5', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Little","did","I","know","that","missing","that","train","would","become","the","turning","point","of","the","entire","trip","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","trip","entire","the","of","point","turning","the","become","would","train","that","missing","that","know","I","did","Little"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e796f14-bf29-5ed8-bd22-8423ab5d6da6', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Little did I know that missing that train would become the turning point of the entire trip. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d26253b7-f968-5eee-a4b6-a1ac865dd5b4', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Little did I know that missing that train would become the turning point of the entire trip. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я и не подозревал, что опоздание на тот поезд станет поворотным моментом всего путешествия. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6a80671-c145-5c0b-9e37-2d5161a20120', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Little did I know that missing that train would become the turning point of the entire trip.","translation":"Я и не подозревал, что опоздание на тот поезд станет поворотным моментом всего путешествия.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Following a Detailed Anecdote"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('deba59ed-26c6-555b-a7a5-cdb53614d349', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to cut a long story short” means used to shorten a detailed account.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D11","is_correct":true,"text":"used to shorten a detailed account"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D12","is_correct":false,"text":"used to introduce an unexpected later development"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D13","is_correct":false,"text":"with understanding gained after an event"}],"word":"to cut a long story short"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a69e4a06-f8b5-5a43-ab97-7bc7f6547fb5', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Little did I know that missing that train would become the turning point of the entire trip.","explanation":"The missing everyday expression is “to cut a long story short”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"to cut a long story short","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D14","is_correct":true},{"audio_text":"in hindsight","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D15","is_correct":false},{"audio_text":"it dawned on me","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D16","is_correct":false}],"sentence_template":"Little did I know that missing that train would become the turning point of the entire trip."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ebdbbcf-e2c2-5ef9-b4d3-083b262ebfb2', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"to cut a long story short","explanation":"The recording uses “to cut a long story short” naturally in context.","hint_prefix":"to c","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Little did I know that missing that train would become the turning point of the entire trip."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23ce48fe-bb12-5586-86b6-f90ecab99d77', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"to cut a long story short","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D17","text":"to cut a long story short"},{"audio_text":"little did I know","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D18","text":"little did I know"},{"audio_text":"in hindsight","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D19","text":"in hindsight"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecd07399-9ecf-5916-9ed3-3d419181443a', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Following a Detailed Anecdote”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D20","is_correct":true,"text":"Little did I know that missing that train would become the turning point of the entire trip."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2a877036-45ae-5279-bd74-31243daf93c7', 'e3fae7ed-7f29-508b-9693-c636d91887b5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dd5c06a6-dd48-523e-9476-42a2a54494cc', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Understanding the Real Point","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bcffd48-70a2-53fb-89f0-c795e82e351f', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D01","left":"to cut a long story short","right":"короче говоря"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D02","left":"little did I know","right":"я и не подозревал"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D03","left":"in hindsight","right":"оглядываясь назад"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D04","left":"turning point","right":"поворотный момент"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D05","left":"it dawned on me","right":"меня осенило"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D06","left":"live to regret","right":"впоследствии пожалеть"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D07","left":"funny thing is","right":"забавно то, что"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8b08c86-f66f-5136-878b-9b7b7e18d1a3', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D08","is_correct":true,"text":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0187c1f-bc6d-5174-b8fc-4cccf1c8c79f', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Короче говоря, меня осенило, что я разговаривал с человеком, чью работу только что раскритиковал.","target_language":"en","word_bank":["To","cut","a","long","story","short",",","it","dawned","on","me","that","I","had","been","speaking","to","the","person","whose","work","I","had","just","criticised","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14d7de61-037f-5f2e-b7b2-2621b8cad352', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"little did I know","instruction":"Выберите подходящее слово.","options":["little did I know","it dawned on me","funny thing is"],"sentence_template":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9603e855-a291-5925-8f45-5f46d92976c2', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","cut","a","long","story","short",",","it","dawned","on","me","that","I","had","been","speaking","to","the","person","whose","work","I","had","just","criticised","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","criticised","just","had","I","work","whose","person","the","to","speaking","been","had","I","that","me","on","dawned","it",",","short","story","long","a","cut","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7df348a-c2c3-5f21-a780-65ebd81d959f', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f25a76f-19ce-5ed6-b4b6-71d8e6d406eb', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Короче говоря, меня осенило, что я разговаривал с человеком, чью работу только что раскритиковал. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2c063c0-9acc-5183-ae5e-0ea687ae96b9', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised.","translation":"Короче говоря, меня осенило, что я разговаривал с человеком, чью работу только что раскритиковал.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Understanding the Real Point"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dd2423c-6db9-50b8-91ff-ca037d976def', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“little did I know” means used to introduce an unexpected later development.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D11","is_correct":true,"text":"used to introduce an unexpected later development"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D12","is_correct":false,"text":"with understanding gained after an event"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D13","is_correct":false,"text":"the moment causing an important change"}],"word":"little did I know"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c949caa2-6ec1-5a23-a625-235aa5f26364', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised.","explanation":"The missing everyday expression is “little did I know”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"little did I know","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D14","is_correct":true},{"audio_text":"turning point","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D15","is_correct":false},{"audio_text":"live to regret","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D16","is_correct":false}],"sentence_template":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65340528-3084-511e-97b6-d21902d37138', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"little did I know","explanation":"The recording uses “little did I know” naturally in context.","hint_prefix":"litt","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e19ac0ce-33dc-5ff2-af80-a07e7f53d318', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"to cut a long story short","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D17","text":"to cut a long story short"},{"audio_text":"little did I know","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D18","text":"little did I know"},{"audio_text":"in hindsight","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D19","text":"in hindsight"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2a0fcf3-daca-592d-b4b2-0c3f6657755a', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Understanding the Real Point”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D20","is_correct":true,"text":"To cut a long story short, it dawned on me that I had been speaking to the person whose work I had just criticised."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2a877036-45ae-5279-bd74-31243daf93c7', 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4dc459ec-5250-5871-a1f2-167b381767ef', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Shadowing a Reflective Ending","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bc3e8fa-653e-5cec-8a8b-3e28c307b215', '4dc459ec-5250-5871-a1f2-167b381767ef', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D01","left":"to cut a long story short","right":"короче говоря"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D02","left":"little did I know","right":"я и не подозревал"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D03","left":"in hindsight","right":"оглядываясь назад"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D04","left":"turning point","right":"поворотный момент"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D05","left":"it dawned on me","right":"меня осенило"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D06","left":"live to regret","right":"впоследствии пожалеть"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D07","left":"funny thing is","right":"забавно то, что"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08dbf320-e5ae-5998-98a6-40deca25b45a', '4dc459ec-5250-5871-a1f2-167b381767ef', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D08","is_correct":true,"text":"In hindsight, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b224c7b4-1a6a-58a1-b99f-3ddb6dcc5d63', '4dc459ec-5250-5871-a1f2-167b381767ef', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"In hindsight, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оглядываясь назад, мне следовало бы смутиться, но забавно то, что этот разговор положил начало долгой дружбе.","target_language":"en","word_bank":["In","hindsight",",","I","should","have","been","embarrassed",",","but","the","funny","thing","is","that","the","conversation","became","a","lasting","friendship","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ff64302-5d7b-5b05-a24d-b0338166620c', '4dc459ec-5250-5871-a1f2-167b381767ef', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"in hindsight","instruction":"Выберите подходящее слово.","options":["in hindsight","live to regret","to cut a long story short"],"sentence_template":"___, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd5a7770-07f2-5b1d-94c7-87fa658123fe', '4dc459ec-5250-5871-a1f2-167b381767ef', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["In","hindsight",",","I","should","have","been","embarrassed",",","but","the","funny","thing","is","that","the","conversation","became","a","lasting","friendship","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","friendship","lasting","a","became","conversation","the","that","is","thing","funny","the","but",",","embarrassed","been","have","should","I",",","hindsight","In"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09ee036b-fc48-5bfc-91b5-a0ce506d7384', '4dc459ec-5250-5871-a1f2-167b381767ef', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"In hindsight, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc183f24-2ac8-5326-a202-05f067173c31', '4dc459ec-5250-5871-a1f2-167b381767ef', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"In hindsight, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Оглядываясь назад, мне следовало бы смутиться, но забавно то, что этот разговор положил начало долгой дружбе. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcdc5661-8ff0-5ef8-9a18-7cb92b2b3931', '4dc459ec-5250-5871-a1f2-167b381767ef', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"In hindsight, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship.","translation":"Оглядываясь назад, мне следовало бы смутиться, но забавно то, что этот разговор положил начало долгой дружбе.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Shadowing a Reflective Ending"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d76db1d9-ae2d-518d-a0fb-f9fd44949bbb', '4dc459ec-5250-5871-a1f2-167b381767ef', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“in hindsight” means with understanding gained after an event.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D11","is_correct":true,"text":"with understanding gained after an event"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D12","is_correct":false,"text":"the moment causing an important change"},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D13","is_correct":false,"text":"I suddenly realised something"}],"word":"in hindsight"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6666b04b-7d13-56c3-a923-862fc29ad0f8', '4dc459ec-5250-5871-a1f2-167b381767ef', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"In hindsight, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship.","explanation":"The missing everyday expression is “in hindsight”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"in hindsight","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D14","is_correct":true},{"audio_text":"it dawned on me","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D15","is_correct":false},{"audio_text":"funny thing is","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D16","is_correct":false}],"sentence_template":"___, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5066f9b-b159-58d4-973a-78354e3606d1', '4dc459ec-5250-5871-a1f2-167b381767ef', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in hindsight","explanation":"The recording uses “in hindsight” naturally in context.","hint_prefix":"in h","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53de9792-7b75-5666-8bb6-7a3414b7902f', '4dc459ec-5250-5871-a1f2-167b381767ef', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"to cut a long story short","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D17","text":"to cut a long story short"},{"audio_text":"little did I know","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D18","text":"little did I know"},{"audio_text":"in hindsight","id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D19","text":"in hindsight"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b5bee01-24dd-553a-8452-672a038a2669', '4dc459ec-5250-5871-a1f2-167b381767ef', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Shadowing a Reflective Ending”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D20","is_correct":true,"text":"In hindsight, I should have been embarrassed, but the funny thing is that the conversation became a lasting friendship."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_PERSONAL_STORIES_ANECDOTES_AND_REFLECTION_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2a877036-45ae-5279-bd74-31243daf93c7', '4dc459ec-5250-5871-a1f2-167b381767ef', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aaa9fe92-24da-5c66-83d6-ec3d033f3814', 'en', 'to cut a long story short', 'короче говоря', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46814c54-c151-59fd-aad3-1f5060e3b3ee', 'en', 'little did I know', 'я и не подозревал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af93cedd-e515-5342-8053-9ad3872537bc', 'en', 'in hindsight', 'оглядываясь назад', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('219c0d72-e9ab-53a3-b4dc-409b31b0af75', 'en', 'it dawned on me', 'меня осенило', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55f7d55c-a837-5337-a258-e92185fef3ed', 'en', 'live to regret', 'впоследствии пожалеть', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4dde39de-9b6a-5ba5-bc97-d743f1ce141d', 'en', 'funny thing is', 'забавно то, что', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aaa9fe92-24da-5c66-83d6-ec3d033f3814', 'en', 'to cut a long story short', 'короче говоря', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46814c54-c151-59fd-aad3-1f5060e3b3ee', 'en', 'little did I know', 'я и не подозревал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af93cedd-e515-5342-8053-9ad3872537bc', 'en', 'in hindsight', 'оглядываясь назад', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('219c0d72-e9ab-53a3-b4dc-409b31b0af75', 'en', 'it dawned on me', 'меня осенило', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55f7d55c-a837-5337-a258-e92185fef3ed', 'en', 'live to regret', 'впоследствии пожалеть', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4dde39de-9b6a-5ba5-bc97-d743f1ce141d', 'en', 'funny thing is', 'забавно то, что', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aaa9fe92-24da-5c66-83d6-ec3d033f3814', 'en', 'to cut a long story short', 'короче говоря', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46814c54-c151-59fd-aad3-1f5060e3b3ee', 'en', 'little did I know', 'я и не подозревал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af93cedd-e515-5342-8053-9ad3872537bc', 'en', 'in hindsight', 'оглядываясь назад', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('219c0d72-e9ab-53a3-b4dc-409b31b0af75', 'en', 'it dawned on me', 'меня осенило', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55f7d55c-a837-5337-a258-e92185fef3ed', 'en', 'live to regret', 'впоследствии пожалеть', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4dde39de-9b6a-5ba5-bc97-d743f1ce141d', 'en', 'funny thing is', 'забавно то, что', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'e3fae7ed-7f29-508b-9693-c636d91887b5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut a long story short' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'e3fae7ed-7f29-508b-9693-c636d91887b5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'little did I know' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'e3fae7ed-7f29-508b-9693-c636d91887b5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'in hindsight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'e3fae7ed-7f29-508b-9693-c636d91887b5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'e3fae7ed-7f29-508b-9693-c636d91887b5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'it dawned on me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'e3fae7ed-7f29-508b-9693-c636d91887b5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'live to regret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'e3fae7ed-7f29-508b-9693-c636d91887b5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'funny thing is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut a long story short' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'little did I know' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'in hindsight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'it dawned on me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'live to regret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, 'dd5c06a6-dd48-523e-9476-42a2a54494cc', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'funny thing is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, '4dc459ec-5250-5871-a1f2-167b381767ef', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut a long story short' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, '4dc459ec-5250-5871-a1f2-167b381767ef', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'little did I know' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, '4dc459ec-5250-5871-a1f2-167b381767ef', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'in hindsight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, '4dc459ec-5250-5871-a1f2-167b381767ef', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, '4dc459ec-5250-5871-a1f2-167b381767ef', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'it dawned on me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, '4dc459ec-5250-5871-a1f2-167b381767ef', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'live to regret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2a877036-45ae-5279-bd74-31243daf93c7', id, '4dc459ec-5250-5871-a1f2-167b381767ef', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'funny thing is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
