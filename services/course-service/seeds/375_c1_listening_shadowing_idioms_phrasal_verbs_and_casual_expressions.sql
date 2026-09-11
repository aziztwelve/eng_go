-- Track: C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', 'C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS', 'Идиомы, фразовые глаголы и разговорные выражения', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Идиомы, фразовые глаголы и разговорные выражения» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Idioms, Phrasal Verbs and Casual Expressions","ru":"Идиомы, фразовые глаголы и разговорные выражения"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for idioms, phrasal verbs and casual expressions and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Идиомы, фразовые глаголы и разговорные выражения» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Understanding Everyday Idioms","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c51d036c-728d-5697-9428-916ea3b3af17', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D01","left":"get around to","right":"наконец взяться за"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D02","left":"sort something out","right":"уладить что-либо"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D03","left":"be up for","right":"быть готовым к"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D04","left":"call it a day","right":"закончить на сегодня"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D05","left":"slip one’s mind","right":"вылететь из головы"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D06","left":"play it by ear","right":"действовать по обстоятельствам"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D07","left":"no big deal","right":"ничего страшного"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0748faff-b7ff-55d1-b8e9-65800b66903d', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D08","is_correct":true,"text":"I never got around to booking the table because it completely slipped my mind until this morning."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9793867c-7bc3-58f5-9565-da76fefb8718', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I never got around to booking the table because it completely slipped my mind until this morning.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я так и не успел забронировать столик, потому что это совершенно вылетело у меня из головы до сегодняшнего утра.","target_language":"en","word_bank":["I","never","got","around","to","booking","the","table","because","it","completely","slipped","my","mind","until","this","morning","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('affa2f0a-b138-5971-9a0c-4cc44d6256fa', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"get around to","instruction":"Выберите подходящее слово.","options":["get around to","call it a day","play it by ear"],"sentence_template":"I never got around to booking the table because it completely slipped my mind until this morning."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5174e9aa-cb3b-5f7f-af9f-314ed1399dc9', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","never","got","around","to","booking","the","table","because","it","completely","slipped","my","mind","until","this","morning","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","morning","this","until","mind","my","slipped","completely","it","because","table","the","booking","to","around","got","never","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc1d285d-2c64-58d3-ab2d-8321971dc90b', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I never got around to booking the table because it completely slipped my mind until this morning. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e15b5237-ab15-58a2-869b-3012cc3990f1', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I never got around to booking the table because it completely slipped my mind until this morning. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я так и не успел забронировать столик, потому что это совершенно вылетело у меня из головы до сегодняшнего утра. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cbdaa8f-5bc8-5990-bdd3-e210e97869f6', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I never got around to booking the table because it completely slipped my mind until this morning.","translation":"Я так и не успел забронировать столик, потому что это совершенно вылетело у меня из головы до сегодняшнего утра.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Understanding Everyday Idioms"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59c7640b-d752-5103-82d1-592091ceef84', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“get around to” means eventually find time to do something.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D11","is_correct":true,"text":"eventually find time to do something"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D12","is_correct":false,"text":"resolve a problem or arrangement"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D13","is_correct":false,"text":"feel willing or interested in doing something"}],"word":"get around to"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7760dbc1-1578-5776-9511-f8fe2f3bd09b', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I never got around to booking the table because it completely slipped my mind until this morning.","explanation":"The missing everyday expression is “get around to”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"get around to","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D14","is_correct":true},{"audio_text":"be up for","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D15","is_correct":false},{"audio_text":"slip one’s mind","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D16","is_correct":false}],"sentence_template":"I never got around to booking the table because it completely slipped my mind until this morning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1880e503-c58d-56b9-b9fc-f67d7050f943', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"get around to","explanation":"The recording uses “get around to” naturally in context.","hint_prefix":"get ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I never got around to booking the table because it completely slipped my mind until this morning."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9748ae2-b553-5ed8-937c-1ff044b36f1b', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"get around to","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D17","text":"get around to"},{"audio_text":"sort something out","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D18","text":"sort something out"},{"audio_text":"be up for","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D19","text":"be up for"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b4efccb-e4cc-5519-895f-1f375ed55a10', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Understanding Everyday Idioms”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D20","is_correct":true,"text":"I never got around to booking the table because it completely slipped my mind until this morning."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Following Phrasal Verbs in Context","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1692b3f4-8265-53ce-9bf8-3418cc138db1', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D01","left":"get around to","right":"наконец взяться за"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D02","left":"sort something out","right":"уладить что-либо"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D03","left":"be up for","right":"быть готовым к"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D04","left":"call it a day","right":"закончить на сегодня"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D05","left":"slip one’s mind","right":"вылететь из головы"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D06","left":"play it by ear","right":"действовать по обстоятельствам"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D07","left":"no big deal","right":"ничего страшного"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f44a9b05-a26c-5f38-b17a-117eeaeb1fcc', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D08","is_correct":true,"text":"I am up for meeting later, but let us play it by ear in case the weather gets worse."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80c83030-9234-5e92-b04e-7c33dfea892a', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am up for meeting later, but let us play it by ear in case the weather gets worse.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я готов встретиться позже, но давай решим по обстоятельствам, если погода ухудшится.","target_language":"en","word_bank":["I","am","up","for","meeting","later",",","but","let","us","play","it","by","ear","in","case","the","weather","gets","worse","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13aea542-f684-531e-a952-6a1900fcc80a', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sort something out","instruction":"Выберите подходящее слово.","options":["sort something out","slip one’s mind","no big deal"],"sentence_template":"I am up for meeting later, but let us play it by ear in case the weather gets worse."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e67e2435-c37e-51ff-a68c-dbf37445df55', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","up","for","meeting","later",",","but","let","us","play","it","by","ear","in","case","the","weather","gets","worse","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","worse","gets","weather","the","case","in","ear","by","it","play","us","let","but",",","later","meeting","for","up","am","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c2571a3-e179-5d96-a3f8-43a3e33e6b16', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am up for meeting later, but let us play it by ear in case the weather gets worse. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9706457f-d586-578d-825e-2987e057e88b', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am up for meeting later, but let us play it by ear in case the weather gets worse. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я готов встретиться позже, но давай решим по обстоятельствам, если погода ухудшится. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26dcb586-3f3e-5ee0-a2d9-76c5d73d2416', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I am up for meeting later, but let us play it by ear in case the weather gets worse.","translation":"Я готов встретиться позже, но давай решим по обстоятельствам, если погода ухудшится.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Following Phrasal Verbs in Context"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b106915-e4cf-5d31-baa9-47c45dbef844', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“sort something out” means resolve a problem or arrangement.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D11","is_correct":true,"text":"resolve a problem or arrangement"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D12","is_correct":false,"text":"feel willing or interested in doing something"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D13","is_correct":false,"text":"stop decide to stop working on something"}],"word":"sort something out"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5256c33-c655-5e9f-82bd-ae55020b494d', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am up for meeting later, but let us play it by ear in case the weather gets worse.","explanation":"The missing everyday expression is “sort something out”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"sort something out","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D14","is_correct":true},{"audio_text":"call it a day","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D15","is_correct":false},{"audio_text":"play it by ear","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D16","is_correct":false}],"sentence_template":"I am up for meeting later, but let us play it by ear in case the weather gets worse."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92659a92-e5cf-5eff-8409-9e9cbce14f51', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"sort something out","explanation":"The recording uses “sort something out” naturally in context.","hint_prefix":"sort","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am up for meeting later, but let us play it by ear in case the weather gets worse."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35c9d20d-d978-514b-98f1-44ae474666ac', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"get around to","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D17","text":"get around to"},{"audio_text":"sort something out","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D18","text":"sort something out"},{"audio_text":"be up for","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D19","text":"be up for"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d24b5ba-110f-544f-89c0-2c8741b59629', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Following Phrasal Verbs in Context”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D20","is_correct":true,"text":"I am up for meeting later, but let us play it by ear in case the weather gets worse."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('065e510b-bd6f-55fc-88ac-e5e4874138f5', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Using Casual Expressions Naturally","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66d682af-ccd0-53ab-b7aa-266e0f535fb1', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D01","left":"get around to","right":"наконец взяться за"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D02","left":"sort something out","right":"уладить что-либо"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D03","left":"be up for","right":"быть готовым к"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D04","left":"call it a day","right":"закончить на сегодня"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D05","left":"slip one’s mind","right":"вылететь из головы"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D06","left":"play it by ear","right":"действовать по обстоятельствам"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D07","left":"no big deal","right":"ничего страшного"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45c7f8a2-976d-5f06-a316-9be5eb84e625', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D08","is_correct":true,"text":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e78b1033-c5b1-515c-9e7f-eb73c8fe99bb', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Как только мы уладим последнюю деталь, можно заканчивать на сегодня; оставшийся вопрос, честно говоря, незначительный.","target_language":"en","word_bank":["Once","we","sort","the","last","detail","out",",","we","can","call","it","a","day",";","the","remaining","issue","is","honestly","no","big","deal","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3c933d4-a786-5399-9a86-b753818052d2', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"be up for","instruction":"Выберите подходящее слово.","options":["be up for","play it by ear","get around to"],"sentence_template":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('414d06b3-1814-5533-85f4-40f4eae8c4a9', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Once","we","sort","the","last","detail","out",",","we","can","call","it","a","day",";","the","remaining","issue","is","honestly","no","big","deal","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","deal","big","no","honestly","is","issue","remaining","the",";","day","a","it","call","can","we",",","out","detail","last","the","sort","we","Once"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('736e2c60-7be0-5e8c-8849-f7533d1d8596', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e109a819-d03d-5b9a-a51f-8be8fb2f4375', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Как только мы уладим последнюю деталь, можно заканчивать на сегодня; оставшийся вопрос, честно говоря, незначительный. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03b4d884-9fb9-5986-bee9-ca318a204e63', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal.","translation":"Как только мы уладим последнюю деталь, можно заканчивать на сегодня; оставшийся вопрос, честно говоря, незначительный.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Using Casual Expressions Naturally"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df4da313-db8b-5c28-88de-3baca96a50d8', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“be up for” means feel willing or interested in doing something.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D11","is_correct":true,"text":"feel willing or interested in doing something"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D12","is_correct":false,"text":"stop decide to stop working on something"},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D13","is_correct":false,"text":"be accidentally forgotten"}],"word":"be up for"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b039e762-f774-5631-ad54-24e1ab43ba09', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal.","explanation":"The missing everyday expression is “be up for”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"be up for","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D14","is_correct":true},{"audio_text":"slip one’s mind","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D15","is_correct":false},{"audio_text":"no big deal","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D16","is_correct":false}],"sentence_template":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1014432e-bfff-593a-acdd-6f0b128471ff', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"be up for","explanation":"The recording uses “be up for” naturally in context.","hint_prefix":"be u","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7ce5e24-1e3d-5438-962a-2764ec3a3772', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"get around to","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D17","text":"get around to"},{"audio_text":"sort something out","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D18","text":"sort something out"},{"audio_text":"be up for","id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D19","text":"be up for"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06d59c0b-a829-5fe7-9fc7-54df2fc09a04', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Using Casual Expressions Naturally”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D20","is_correct":true,"text":"Once we sort the last detail out, we can call it a day; the remaining issue is honestly no big deal."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_IDIOMS_PHRASAL_VERBS_AND_CASUAL_EXPRESSIONS_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', '065e510b-bd6f-55fc-88ac-e5e4874138f5', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55e35410-cbf9-5902-9a1e-862eed075bc8', 'en', 'get around to', 'наконец взяться за', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1205edb5-4119-5ec9-afe2-17093eecfa9a', 'en', 'sort something out', 'уладить что-либо', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19de62c3-5d55-5efd-8cab-4d7624aeb499', 'en', 'be up for', 'быть готовым к', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('12fde3f5-39ff-5743-a015-0c6aeeb01f84', 'en', 'call it a day', 'закончить на сегодня', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0450650-72b0-5454-8f79-be6671c2f3eb', 'en', 'slip one’s mind', 'вылететь из головы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d030dc5-8f77-586c-8be7-d929e861d781', 'en', 'play it by ear', 'действовать по обстоятельствам', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02c19789-6948-5dc9-aead-c99fa2b692ce', 'en', 'no big deal', 'ничего страшного', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55e35410-cbf9-5902-9a1e-862eed075bc8', 'en', 'get around to', 'наконец взяться за', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1205edb5-4119-5ec9-afe2-17093eecfa9a', 'en', 'sort something out', 'уладить что-либо', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19de62c3-5d55-5efd-8cab-4d7624aeb499', 'en', 'be up for', 'быть готовым к', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('12fde3f5-39ff-5743-a015-0c6aeeb01f84', 'en', 'call it a day', 'закончить на сегодня', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0450650-72b0-5454-8f79-be6671c2f3eb', 'en', 'slip one’s mind', 'вылететь из головы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d030dc5-8f77-586c-8be7-d929e861d781', 'en', 'play it by ear', 'действовать по обстоятельствам', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02c19789-6948-5dc9-aead-c99fa2b692ce', 'en', 'no big deal', 'ничего страшного', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55e35410-cbf9-5902-9a1e-862eed075bc8', 'en', 'get around to', 'наконец взяться за', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1205edb5-4119-5ec9-afe2-17093eecfa9a', 'en', 'sort something out', 'уладить что-либо', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19de62c3-5d55-5efd-8cab-4d7624aeb499', 'en', 'be up for', 'быть готовым к', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('12fde3f5-39ff-5743-a015-0c6aeeb01f84', 'en', 'call it a day', 'закончить на сегодня', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0450650-72b0-5454-8f79-be6671c2f3eb', 'en', 'slip one’s mind', 'вылететь из головы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d030dc5-8f77-586c-8be7-d929e861d781', 'en', 'play it by ear', 'действовать по обстоятельствам', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02c19789-6948-5dc9-aead-c99fa2b692ce', 'en', 'no big deal', 'ничего страшного', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'get around to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'sort something out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'be up for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'call it a day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'slip one’s mind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'play it by ear' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, 'be0e5a2e-d658-5eda-9631-8f13b4b9c8f2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'no big deal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'get around to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'sort something out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'be up for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'call it a day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'slip one’s mind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'play it by ear' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '02c84ce3-54d6-5ab5-9f8d-7d8670e28adc', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'no big deal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '065e510b-bd6f-55fc-88ac-e5e4874138f5', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'get around to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '065e510b-bd6f-55fc-88ac-e5e4874138f5', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'sort something out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '065e510b-bd6f-55fc-88ac-e5e4874138f5', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'be up for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '065e510b-bd6f-55fc-88ac-e5e4874138f5', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'call it a day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '065e510b-bd6f-55fc-88ac-e5e4874138f5', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'slip one’s mind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '065e510b-bd6f-55fc-88ac-e5e4874138f5', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'play it by ear' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b10bd524-dfc1-5bc6-9f9b-8198bcd78e0e', id, '065e510b-bd6f-55fc-88ac-e5e4874138f5', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'no big deal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
