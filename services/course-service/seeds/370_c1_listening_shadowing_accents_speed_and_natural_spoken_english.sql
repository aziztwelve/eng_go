-- Track: C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('66e581b0-af58-5fff-b201-dc617c185ca2', 'C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH', 'Акценты, скорость и естественная английская речь', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Акценты, скорость и естественная английская речь» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Accents, Speed and Natural Spoken English","ru":"Акценты, скорость и естественная английская речь"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for accents, speed and natural spoken english and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Акценты, скорость и естественная английская речь» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Catching Meaning Across Accents","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d346e10-966a-5bb6-a920-7a7ffb8aff5d', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D01","left":"key word","right":"ключевое слово"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D02","left":"context clue","right":"контекстная подсказка"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D03","left":"speech rhythm","right":"ритм речи"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D04","left":"blur together","right":"сливаться"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D05","left":"stress pattern","right":"схема ударения"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D06","left":"overall message","right":"общий смысл"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D07","left":"tune one’s ear","right":"натренировать слух"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e07c7b74-1270-53cb-ac8e-c44665ad83d0', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D08","is_correct":true,"text":"When unfamiliar sounds blur together, focus on each stressed key word and use context clues to reconstruct the overall message."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5af6fe53-9e47-5d4c-ba27-d52ea13fe32f', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When unfamiliar sounds blur together, focus on each stressed key word and use context clues to reconstruct the overall message.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда незнакомые звуки сливаются, сосредоточьтесь на каждом ударном ключевом слове и используйте контекстные подсказки для восстановления общего смысла.","target_language":"en","word_bank":["When","unfamiliar","sounds","blur","together",",","focus","on","each","stressed","key","word","and","use","context","clues","to","reconstruct","the","overall","message","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64d778f9-d79d-55c1-8d3a-390c87346411', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"key word","instruction":"Выберите подходящее слово.","options":["key word","blur together","overall message"],"sentence_template":"When unfamiliar sounds blur together, focus on each stressed ___ and use context clues to reconstruct the overall message."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bff5cdb-5074-53d6-bc47-8e1f7266cce0', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","unfamiliar","sounds","blur","together",",","focus","on","each","stressed","key","word","and","use","context","clues","to","reconstruct","the","overall","message","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","message","overall","the","reconstruct","to","clues","context","use","and","word","key","stressed","each","on","focus",",","together","blur","sounds","unfamiliar","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e93e689e-b6c4-57ab-98e1-6b6e9ecd3da9', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When unfamiliar sounds blur together, focus on each stressed key word and use context clues to reconstruct the overall message. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1dbacb5-e7cf-5738-b228-8602a1214bb0', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When unfamiliar sounds blur together, focus on each stressed key word and use context clues to reconstruct the overall message. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Когда незнакомые звуки сливаются, сосредоточьтесь на каждом ударном ключевом слове и используйте контекстные подсказки для восстановления общего смысла. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('588c7937-26e9-5e5f-899d-7e50268dd28f', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"When unfamiliar sounds blur together, focus on each stressed key word and use context clues to reconstruct the overall message.","translation":"Когда незнакомые звуки сливаются, сосредоточьтесь на каждом ударном ключевом слове и используйте контекстные подсказки для восстановления общего смысла.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Catching Meaning Across Accents"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9471a008-4bfa-5844-9a9c-e665125a343a', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“key word” means a content word carrying central meaning.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D11","is_correct":true,"text":"a content word carrying central meaning"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D12","is_correct":false,"text":"surrounding information that helps interpretation"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D13","is_correct":false,"text":"the timing pattern of stressed and unstressed language"}],"word":"key word"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cca8bfc4-4449-5c74-b0bb-9038d7b7bc5a', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When unfamiliar sounds blur together, focus on each stressed key word and use context clues to reconstruct the overall message.","explanation":"The missing everyday expression is “key word”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"key word","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D14","is_correct":true},{"audio_text":"speech rhythm","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D15","is_correct":false},{"audio_text":"stress pattern","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D16","is_correct":false}],"sentence_template":"When unfamiliar sounds blur together, focus on each stressed ___ and use context clues to reconstruct the overall message."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7084076b-0142-5c61-bb09-c3146c77eaa5', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"key word","explanation":"The recording uses “key word” naturally in context.","hint_prefix":"key ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When unfamiliar sounds blur together, focus on each stressed ___ and use context clues to reconstruct the overall message."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('276924c5-0d96-5267-8b45-4956d5a0d09a', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"key word","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D17","text":"key word"},{"audio_text":"context clue","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D18","text":"context clue"},{"audio_text":"speech rhythm","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D19","text":"speech rhythm"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('881c2e95-23c5-5d70-9819-395df2fb71a5', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Catching Meaning Across Accents”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D20","is_correct":true,"text":"When unfamiliar sounds blur together, focus on each stressed key word and use context clues to reconstruct the overall message."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('66e581b0-af58-5fff-b201-dc617c185ca2', 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Using Context When Sounds Blur","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3e36ebb-966b-58e7-ae66-cfd8cb56d452', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D01","left":"key word","right":"ключевое слово"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D02","left":"context clue","right":"контекстная подсказка"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D03","left":"speech rhythm","right":"ритм речи"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D04","left":"blur together","right":"сливаться"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D05","left":"stress pattern","right":"схема ударения"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D06","left":"overall message","right":"общий смысл"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D07","left":"tune one’s ear","right":"натренировать слух"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e82e0f6-0873-567a-86a0-b0e35504a0d8', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D08","is_correct":true,"text":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e25e8f69-ca31-5f00-b89b-03d8b5a1a740', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ритм речи различается в разных акцентах, но схемы ударения всё равно показывают, какую информацию говорящий считает новой или важной.","target_language":"en","word_bank":["Speech","rhythm","varies","across","accents",",","but","stress","patterns","still","reveal","which","information","the","speaker","treats","as","new","or","important","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8da5108-ad79-5a64-b6aa-7c2353d5dcbe', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"context clue","instruction":"Выберите подходящее слово.","options":["context clue","stress pattern","tune one’s ear"],"sentence_template":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8a4ec50-642d-5b65-88f4-a5d6172cec28', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Speech","rhythm","varies","across","accents",",","but","stress","patterns","still","reveal","which","information","the","speaker","treats","as","new","or","important","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","important","or","new","as","treats","speaker","the","information","which","reveal","still","patterns","stress","but",",","accents","across","varies","rhythm","Speech"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d92d3f44-7251-5bfa-80e8-3b2ac7d72ad7', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2af716ec-82c9-5009-abc7-0b3d24318d87', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Ритм речи различается в разных акцентах, но схемы ударения всё равно показывают, какую информацию говорящий считает новой или важной. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16e5a438-178b-5365-aebc-ed9d26bd5f1d', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important.","translation":"Ритм речи различается в разных акцентах, но схемы ударения всё равно показывают, какую информацию говорящий считает новой или важной.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Using Context When Sounds Blur"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('657b8cd1-d365-5dc9-a73c-90e984c401d8', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“context clue” means surrounding information that helps interpretation.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D11","is_correct":true,"text":"surrounding information that helps interpretation"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D12","is_correct":false,"text":"the timing pattern of stressed and unstressed language"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D13","is_correct":false,"text":"become difficult to separate in fast speech"}],"word":"context clue"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f44ffa6b-661d-5847-a565-696a9684568c', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important.","explanation":"The missing everyday expression is “context clue”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"context clue","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D14","is_correct":true},{"audio_text":"blur together","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D15","is_correct":false},{"audio_text":"overall message","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D16","is_correct":false}],"sentence_template":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebb26f76-caba-598f-941e-7e5fb8a4fc20', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"context clue","explanation":"The recording uses “context clue” naturally in context.","hint_prefix":"cont","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c55c888-a650-5d62-bc6e-cb72f748f04f', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"key word","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D17","text":"key word"},{"audio_text":"context clue","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D18","text":"context clue"},{"audio_text":"speech rhythm","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D19","text":"speech rhythm"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d31f8b53-af32-50e3-ad0c-1d3f705e17b8', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Using Context When Sounds Blur”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D20","is_correct":true,"text":"Speech rhythm varies across accents, but stress patterns still reveal which information the speaker treats as new or important."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('66e581b0-af58-5fff-b201-dc617c185ca2', '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2e106864-afeb-5595-a5a4-b009364df2fe', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Shadowing Natural Pace and Rhythm","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66e48013-8732-5268-ba98-beed5f74492f', '2e106864-afeb-5595-a5a4-b009364df2fe', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D01","left":"key word","right":"ключевое слово"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D02","left":"context clue","right":"контекстная подсказка"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D03","left":"speech rhythm","right":"ритм речи"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D04","left":"blur together","right":"сливаться"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D05","left":"stress pattern","right":"схема ударения"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D06","left":"overall message","right":"общий смысл"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D07","left":"tune one’s ear","right":"натренировать слух"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c393331e-64a1-590b-a11e-b3504ebfa80d', '2e106864-afeb-5595-a5a4-b009364df2fe', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D08","is_correct":true,"text":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85e5085d-6633-5f5b-9a73-58f9a6a4355e', '2e106864-afeb-5595-a5a4-b009364df2fe', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Слух настраивается благодаря повторному содержательному контакту с речью, а не ожиданию, что каждый говорящий воспроизведёт одно идеальное произношение.","target_language":"en","word_bank":["You","tune","your","ear","through","repeated","meaningful","exposure",",","not","by","expecting","every","speaker","to","reproduce","a","single","ideal","pronunciation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2253d87-2735-5465-b89f-c5c9ceb9b739', '2e106864-afeb-5595-a5a4-b009364df2fe', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"speech rhythm","instruction":"Выберите подходящее слово.","options":["speech rhythm","overall message","key word"],"sentence_template":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63941415-65b5-5703-861e-204da9ffeabe', '2e106864-afeb-5595-a5a4-b009364df2fe', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","tune","your","ear","through","repeated","meaningful","exposure",",","not","by","expecting","every","speaker","to","reproduce","a","single","ideal","pronunciation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","pronunciation","ideal","single","a","reproduce","to","speaker","every","expecting","by","not",",","exposure","meaningful","repeated","through","ear","your","tune","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ea4beab-dd04-5a89-b463-f7f693c4b92a', '2e106864-afeb-5595-a5a4-b009364df2fe', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7d12fdb-1951-54f8-b2bb-24e6dbccca0f', '2e106864-afeb-5595-a5a4-b009364df2fe', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Слух настраивается благодаря повторному содержательному контакту с речью, а не ожиданию, что каждый говорящий воспроизведёт одно идеальное произношение. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a16935c1-c9ab-52dd-98f8-df829be5fa52', '2e106864-afeb-5595-a5a4-b009364df2fe', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation.","translation":"Слух настраивается благодаря повторному содержательному контакту с речью, а не ожиданию, что каждый говорящий воспроизведёт одно идеальное произношение.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Shadowing Natural Pace and Rhythm"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54181890-1ce8-57fb-891d-3a0f0c53115e', '2e106864-afeb-5595-a5a4-b009364df2fe', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“speech rhythm” means the timing pattern of stressed and unstressed language.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D11","is_correct":true,"text":"the timing pattern of stressed and unstressed language"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D12","is_correct":false,"text":"become difficult to separate in fast speech"},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D13","is_correct":false,"text":"the distribution of emphasis across words"}],"word":"speech rhythm"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b06920a6-67f5-5648-806d-3bcbece0da8e', '2e106864-afeb-5595-a5a4-b009364df2fe', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation.","explanation":"The missing everyday expression is “speech rhythm”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"speech rhythm","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D14","is_correct":true},{"audio_text":"stress pattern","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D15","is_correct":false},{"audio_text":"tune one’s ear","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D16","is_correct":false}],"sentence_template":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('361ed3e1-45f1-5420-866f-b7e6884fea06', '2e106864-afeb-5595-a5a4-b009364df2fe', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"speech rhythm","explanation":"The recording uses “speech rhythm” naturally in context.","hint_prefix":"spee","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50595e42-7903-5df3-8b49-11bef3269570', '2e106864-afeb-5595-a5a4-b009364df2fe', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"key word","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D17","text":"key word"},{"audio_text":"context clue","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D18","text":"context clue"},{"audio_text":"speech rhythm","id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D19","text":"speech rhythm"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15b8b509-aceb-58ac-a2f0-956a436bedd3', '2e106864-afeb-5595-a5a4-b009364df2fe', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Shadowing Natural Pace and Rhythm”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D20","is_correct":true,"text":"You tune your ear through repeated meaningful exposure, not by expecting every speaker to reproduce a single ideal pronunciation."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_ACCENTS_SPEED_AND_NATURAL_SPOKEN_ENGLISH_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('66e581b0-af58-5fff-b201-dc617c185ca2', '2e106864-afeb-5595-a5a4-b009364df2fe', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('186453f4-eb83-50a9-a8e6-bbca74902724', 'en', 'key word', 'ключевое слово', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f58d15a-ece7-5dd3-9d93-963e5002ec57', 'en', 'context clue', 'контекстная подсказка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d831f81-8028-5dc6-9da2-6aff3ae050d7', 'en', 'speech rhythm', 'ритм речи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f68fe677-d451-5e95-8358-8b04a4c7372b', 'en', 'blur together', 'сливаться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('442453a5-622b-5a1d-a93c-864fc46d932a', 'en', 'stress pattern', 'схема ударения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6debcef-b199-5498-9205-4c10fcc5e8f6', 'en', 'overall message', 'общий смысл', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79e933ca-24bd-53d7-9d74-77d390ed890f', 'en', 'tune one’s ear', 'натренировать слух', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('186453f4-eb83-50a9-a8e6-bbca74902724', 'en', 'key word', 'ключевое слово', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f58d15a-ece7-5dd3-9d93-963e5002ec57', 'en', 'context clue', 'контекстная подсказка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d831f81-8028-5dc6-9da2-6aff3ae050d7', 'en', 'speech rhythm', 'ритм речи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f68fe677-d451-5e95-8358-8b04a4c7372b', 'en', 'blur together', 'сливаться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('442453a5-622b-5a1d-a93c-864fc46d932a', 'en', 'stress pattern', 'схема ударения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6debcef-b199-5498-9205-4c10fcc5e8f6', 'en', 'overall message', 'общий смысл', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79e933ca-24bd-53d7-9d74-77d390ed890f', 'en', 'tune one’s ear', 'натренировать слух', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('186453f4-eb83-50a9-a8e6-bbca74902724', 'en', 'key word', 'ключевое слово', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f58d15a-ece7-5dd3-9d93-963e5002ec57', 'en', 'context clue', 'контекстная подсказка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d831f81-8028-5dc6-9da2-6aff3ae050d7', 'en', 'speech rhythm', 'ритм речи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f68fe677-d451-5e95-8358-8b04a4c7372b', 'en', 'blur together', 'сливаться', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('442453a5-622b-5a1d-a93c-864fc46d932a', 'en', 'stress pattern', 'схема ударения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6debcef-b199-5498-9205-4c10fcc5e8f6', 'en', 'overall message', 'общий смысл', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79e933ca-24bd-53d7-9d74-77d390ed890f', 'en', 'tune one’s ear', 'натренировать слух', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'key word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'context clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'speech rhythm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'blur together' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'stress pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'overall message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, 'c60ec94c-8af3-5e5f-9f26-a978bf8beaa7', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'tune one’s ear' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'key word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'context clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'speech rhythm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'blur together' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stress pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'overall message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '7ae9fb67-ce05-56d1-8d5b-cac106c84e1d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tune one’s ear' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '2e106864-afeb-5595-a5a4-b009364df2fe', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'key word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '2e106864-afeb-5595-a5a4-b009364df2fe', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'context clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '2e106864-afeb-5595-a5a4-b009364df2fe', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'speech rhythm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '2e106864-afeb-5595-a5a4-b009364df2fe', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'blur together' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '2e106864-afeb-5595-a5a4-b009364df2fe', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stress pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '2e106864-afeb-5595-a5a4-b009364df2fe', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'overall message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '66e581b0-af58-5fff-b201-dc617c185ca2', id, '2e106864-afeb-5595-a5a4-b009364df2fe', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tune one’s ear' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
