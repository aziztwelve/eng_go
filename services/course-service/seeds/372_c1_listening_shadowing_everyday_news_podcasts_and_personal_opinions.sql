-- Track: C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('dcd38168-e007-54c8-8bd3-9a72d195a9e4', 'C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS', 'Повседневные новости, подкасты и личные мнения', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Повседневные новости, подкасты и личные мнения» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Everyday News, Podcasts and Personal Opinions","ru":"Повседневные новости, подкасты и личные мнения"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for everyday news, podcasts and personal opinions and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Повседневные новости, подкасты и личные мнения» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e1cb99a6-40bd-504b-9514-25966edc6150', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Following an Informal Podcast","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd82256d-a2e1-5b26-86de-4809d5965b99', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D01","left":"take something with a pinch of salt","right":"относиться скептически"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D02","left":"one-sided account","right":"одностороннее изложение"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D03","left":"back up a claim","right":"подтвердить утверждение"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D04","left":"jump to conclusions","right":"делать поспешные выводы"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D05","left":"put something into perspective","right":"показать в контексте"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D06","left":"personal take","right":"личный взгляд"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D07","left":"there is more to it","right":"всё сложнее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1131e20f-97f3-5d3d-906f-2be8abacd2eb', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D08","is_correct":true,"text":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d884732-c64b-501a-b0d2-cf620e25dfba', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я бы отнёсся к заголовку скептически, поскольку статья даёт одностороннее изложение и почти не называет источники.","target_language":"en","word_bank":["I","would","take","the","headline","with","a","pinch","of","salt","because","the","article","offers","a","one-sided","account","and","barely","identifies","its","sources","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23d9deb3-40b0-5a33-aca1-d64f7f965584', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"take something with a pinch of salt","instruction":"Выберите подходящее слово.","options":["take something with a pinch of salt","jump to conclusions","personal take"],"sentence_template":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb6a30f9-2dce-5c55-b90d-de52c685f385', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","would","take","the","headline","with","a","pinch","of","salt","because","the","article","offers","a","one-sided","account","and","barely","identifies","its","sources","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","sources","its","identifies","barely","and","account","one-sided","a","offers","article","the","because","salt","of","pinch","a","with","headline","the","take","would","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e24f817-abce-5abd-bb48-7e84dddc9ea1', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('345bfcb7-59c2-5dc1-9f47-73018e09de9e', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Я бы отнёсся к заголовку скептически, поскольку статья даёт одностороннее изложение и почти не называет источники. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6e673b0-ac12-54db-bdbf-f7229db04589', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources.","translation":"Я бы отнёсся к заголовку скептически, поскольку статья даёт одностороннее изложение и почти не называет источники.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Following an Informal Podcast"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('430b9754-5da0-52ed-a1cd-d06c056f4b3e', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“take something with a pinch of salt” means avoid accepting a claim completely.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D11","is_correct":true,"text":"avoid accepting a claim completely"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D12","is_correct":false,"text":"a description representing only one perspective"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D13","is_correct":false,"text":"support a statement with evidence"}],"word":"take something with a pinch of salt"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffe0ab6d-78e2-522f-a896-374404f98a2e', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources.","explanation":"The missing everyday expression is “take something with a pinch of salt”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"take something with a pinch of salt","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D14","is_correct":true},{"audio_text":"back up a claim","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D15","is_correct":false},{"audio_text":"put something into perspective","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D16","is_correct":false}],"sentence_template":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2141659a-d6fb-51e8-a530-1600b01419fd', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"take something with a pinch of salt","explanation":"The recording uses “take something with a pinch of salt” naturally in context.","hint_prefix":"take","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4068a40c-9f30-53fc-94a7-978da3e50ff5', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"take something with a pinch of salt","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D17","text":"take something with a pinch of salt"},{"audio_text":"one-sided account","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D18","text":"one-sided account"},{"audio_text":"back up a claim","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D19","text":"back up a claim"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d02e44e-f62f-5f67-b031-88444b47351e', 'e1cb99a6-40bd-504b-9514-25966edc6150', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Following an Informal Podcast”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D20","is_correct":true,"text":"I would take the headline with a pinch of salt because the article offers a one-sided account and barely identifies its sources."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dcd38168-e007-54c8-8bd3-9a72d195a9e4', 'e1cb99a6-40bd-504b-9514-25966edc6150', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e470ea3e-03ee-55ba-97d2-a62af57d7b5f', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Separating News from Opinion","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5e63ac9-33fe-50e9-8bd8-4b0199b343ff', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D01","left":"take something with a pinch of salt","right":"относиться скептически"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D02","left":"one-sided account","right":"одностороннее изложение"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D03","left":"back up a claim","right":"подтвердить утверждение"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D04","left":"jump to conclusions","right":"делать поспешные выводы"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D05","left":"put something into perspective","right":"показать в контексте"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D06","left":"personal take","right":"личный взгляд"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D07","left":"there is more to it","right":"всё сложнее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bfac8e8-c40e-54ff-a1ea-cf5c79394bb1', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D08","is_correct":true,"text":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76d999f6-a116-5de0-a2cb-488636a0a44c', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Личный взгляд ведущего интересен, но цифры не полностью подтверждают более широкое утверждение.","target_language":"en","word_bank":["The","presenter’s","personal","take","is","engaging",",","but","the","figures","do","not","fully","back","up","the","broader","claim","being","made","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee33466c-875d-52f6-ae3a-ababfc7efddb', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"one-sided account","instruction":"Выберите подходящее слово.","options":["one-sided account","put something into perspective","there is more to it"],"sentence_template":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74c5a1e3-966e-5515-8586-19571d3cab2b', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","presenter’s","personal","take","is","engaging",",","but","the","figures","do","not","fully","back","up","the","broader","claim","being","made","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","made","being","claim","broader","the","up","back","fully","not","do","figures","the","but",",","engaging","is","take","personal","presenter’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0980c00-374e-56bb-b93f-18dc409d3375', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a79c42e9-0ff6-5719-9a35-98c357679a35', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Личный взгляд ведущего интересен, но цифры не полностью подтверждают более широкое утверждение. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16c21a9a-1c3c-5677-a2b9-1787c6d6ef42', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made.","translation":"Личный взгляд ведущего интересен, но цифры не полностью подтверждают более широкое утверждение.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Separating News from Opinion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b1cfb3a-a989-58d9-819c-a7e18d0d1124', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“one-sided account” means a description representing only one perspective.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D11","is_correct":true,"text":"a description representing only one perspective"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D12","is_correct":false,"text":"support a statement with evidence"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D13","is_correct":false,"text":"decide before enough information is available"}],"word":"one-sided account"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ed31cbe-4c6b-5b5a-9b86-d36260ec1094', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made.","explanation":"The missing everyday expression is “one-sided account”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"one-sided account","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D14","is_correct":true},{"audio_text":"jump to conclusions","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D15","is_correct":false},{"audio_text":"personal take","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D16","is_correct":false}],"sentence_template":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc4212f2-b715-5bf9-b972-452edde854db', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"one-sided account","explanation":"The recording uses “one-sided account” naturally in context.","hint_prefix":"one-","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87a54bb7-ca2c-55a0-8e2d-9ef24b786577', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"take something with a pinch of salt","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D17","text":"take something with a pinch of salt"},{"audio_text":"one-sided account","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D18","text":"one-sided account"},{"audio_text":"back up a claim","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D19","text":"back up a claim"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a76f992-3aad-5cfc-9f57-c13336528849', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Separating News from Opinion”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D20","is_correct":true,"text":"The presenter’s personal take is engaging, but the figures do not fully back up the broader claim being made."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dcd38168-e007-54c8-8bd3-9a72d195a9e4', 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Shadowing a Balanced Reaction","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99b0ac6b-0744-5a70-b083-3badd18feafb', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D01","left":"take something with a pinch of salt","right":"относиться скептически"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D02","left":"one-sided account","right":"одностороннее изложение"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D03","left":"back up a claim","right":"подтвердить утверждение"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D04","left":"jump to conclusions","right":"делать поспешные выводы"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D05","left":"put something into perspective","right":"показать в контексте"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D06","left":"personal take","right":"личный взгляд"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D07","left":"there is more to it","right":"всё сложнее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd79e34f-9829-5a33-bac0-b9634380b461', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D08","is_correct":true,"text":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12765dd3-e8b0-507d-8598-9302c44ce438', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем делать поспешные выводы, более длинное интервью показывает происшествие в контексте и демонстрирует, что всё сложнее.","target_language":"en","word_bank":["Before","we","jump","to","conclusions",",","the","longer","interview","puts","the","incident","into","perspective","and","shows","that","there","is","more","to","it","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('718b13d8-0286-50b3-8b9a-80f8df7b79ae', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"back up a claim","instruction":"Выберите подходящее слово.","options":["back up a claim","personal take","take something with a pinch of salt"],"sentence_template":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2a36786-8325-5102-8213-c95fb1ddc23f', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","we","jump","to","conclusions",",","the","longer","interview","puts","the","incident","into","perspective","and","shows","that","there","is","more","to","it","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","it","to","more","is","there","that","shows","and","perspective","into","incident","the","puts","interview","longer","the",",","conclusions","to","jump","we","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b709bf8-d155-51c7-9407-01569c8ff1e3', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('830d34b1-0aad-5423-b5d2-e64ad0a74418', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Прежде чем делать поспешные выводы, более длинное интервью показывает происшествие в контексте и демонстрирует, что всё сложнее. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('365ebad8-d28c-5d36-bfa7-4a7dcd3585aa', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it.","translation":"Прежде чем делать поспешные выводы, более длинное интервью показывает происшествие в контексте и демонстрирует, что всё сложнее.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Shadowing a Balanced Reaction"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8af7b9f2-33d6-5e4e-b278-f33a700789c5', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“back up a claim” means support a statement with evidence.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D11","is_correct":true,"text":"support a statement with evidence"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D12","is_correct":false,"text":"decide before enough information is available"},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D13","is_correct":false,"text":"help judge importance through comparison"}],"word":"back up a claim"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1be1953c-4d7a-532f-a557-6b3544fe1cf7', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it.","explanation":"The missing everyday expression is “back up a claim”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"back up a claim","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D14","is_correct":true},{"audio_text":"put something into perspective","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D15","is_correct":false},{"audio_text":"there is more to it","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D16","is_correct":false}],"sentence_template":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fd3d899-8b03-580c-8535-8580cf90eb92', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"back up a claim","explanation":"The recording uses “back up a claim” naturally in context.","hint_prefix":"back","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dc32fdd-edd8-5371-b149-2d6ba538ef09', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"take something with a pinch of salt","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D17","text":"take something with a pinch of salt"},{"audio_text":"one-sided account","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D18","text":"one-sided account"},{"audio_text":"back up a claim","id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D19","text":"back up a claim"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a23dc921-7cbe-54e3-8989-70f91d7fa47b', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Shadowing a Balanced Reaction”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D20","is_correct":true,"text":"Before we jump to conclusions, the longer interview puts the incident into perspective and shows that there is more to it."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_EVERYDAY_NEWS_PODCASTS_AND_PERSONAL_OPINIONS_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dcd38168-e007-54c8-8bd3-9a72d195a9e4', '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('caa7720e-a92b-55dc-827f-47e4efeab81d', 'en', 'take something with a pinch of salt', 'относиться скептически', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8b3e771-34e9-57a8-83b1-0832e7fad2ca', 'en', 'one-sided account', 'одностороннее изложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('156563e8-91fd-5e24-a274-202e575cd45b', 'en', 'back up a claim', 'подтвердить утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ade8e1d-fc47-5874-b72f-45fb2e69eb88', 'en', 'jump to conclusions', 'делать поспешные выводы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1406da16-e023-5a08-8382-46270d4feaf5', 'en', 'put something into perspective', 'показать в контексте', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b06945d-ea86-5d1c-b4be-7176e718637e', 'en', 'personal take', 'личный взгляд', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bbe1c4-9299-504b-b274-c725e8c536d2', 'en', 'there is more to it', 'всё сложнее', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('caa7720e-a92b-55dc-827f-47e4efeab81d', 'en', 'take something with a pinch of salt', 'относиться скептически', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8b3e771-34e9-57a8-83b1-0832e7fad2ca', 'en', 'one-sided account', 'одностороннее изложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('156563e8-91fd-5e24-a274-202e575cd45b', 'en', 'back up a claim', 'подтвердить утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ade8e1d-fc47-5874-b72f-45fb2e69eb88', 'en', 'jump to conclusions', 'делать поспешные выводы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1406da16-e023-5a08-8382-46270d4feaf5', 'en', 'put something into perspective', 'показать в контексте', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b06945d-ea86-5d1c-b4be-7176e718637e', 'en', 'personal take', 'личный взгляд', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bbe1c4-9299-504b-b274-c725e8c536d2', 'en', 'there is more to it', 'всё сложнее', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('caa7720e-a92b-55dc-827f-47e4efeab81d', 'en', 'take something with a pinch of salt', 'относиться скептически', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8b3e771-34e9-57a8-83b1-0832e7fad2ca', 'en', 'one-sided account', 'одностороннее изложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('156563e8-91fd-5e24-a274-202e575cd45b', 'en', 'back up a claim', 'подтвердить утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ade8e1d-fc47-5874-b72f-45fb2e69eb88', 'en', 'jump to conclusions', 'делать поспешные выводы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1406da16-e023-5a08-8382-46270d4feaf5', 'en', 'put something into perspective', 'показать в контексте', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b06945d-ea86-5d1c-b4be-7176e718637e', 'en', 'personal take', 'личный взгляд', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bbe1c4-9299-504b-b274-c725e8c536d2', 'en', 'there is more to it', 'всё сложнее', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e1cb99a6-40bd-504b-9514-25966edc6150', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'take something with a pinch of salt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e1cb99a6-40bd-504b-9514-25966edc6150', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'one-sided account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e1cb99a6-40bd-504b-9514-25966edc6150', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'back up a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e1cb99a6-40bd-504b-9514-25966edc6150', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'jump to conclusions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e1cb99a6-40bd-504b-9514-25966edc6150', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'put something into perspective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e1cb99a6-40bd-504b-9514-25966edc6150', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'personal take' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e1cb99a6-40bd-504b-9514-25966edc6150', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'there is more to it' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'take something with a pinch of salt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'one-sided account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'back up a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'jump to conclusions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'put something into perspective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'personal take' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, 'e470ea3e-03ee-55ba-97d2-a62af57d7b5f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'there is more to it' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'take something with a pinch of salt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'one-sided account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'back up a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'jump to conclusions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'put something into perspective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'personal take' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dcd38168-e007-54c8-8bd3-9a72d195a9e4', id, '5c2209ad-0ac9-51ba-a77f-c37a6e22d17e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'there is more to it' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
