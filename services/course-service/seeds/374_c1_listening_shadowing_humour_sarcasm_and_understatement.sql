-- Track: C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', 'C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT', 'Юмор, сарказм и преуменьшение', 'Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Юмор, сарказм и преуменьшение» и воспроизводите её ритм, тон и скрытый смысл.', '{"en":"Humour, Sarcasm and Understatement","ru":"Юмор, сарказм и преуменьшение"}'::jsonb, '{"en":"Develop C1 understanding of natural everyday English for humour, sarcasm and understatement and reproduce its rhythm, tone, and implied meaning.","ru":"Развивайте понимание естественной повседневной английской речи уровня C1 по теме «Юмор, сарказм и преуменьшение» и воспроизводите её ритм, тон и скрытый смысл."}'::jsonb, 'en', 'C1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('593c0574-dcd4-5fe5-8c68-84e2d5e2731d', NULL, 'Понимание естественной речи', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Recognising a Playful Tone","ru":"Понимание естественной речи"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df940782-3ca4-58e9-a228-d09a8b84373d', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D01","left":"deadpan delivery","right":"невозмутимая подача"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D02","left":"tongue-in-cheek","right":"иронический"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D03","left":"understatement","right":"преуменьшение"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D04","left":"sarcastic remark","right":"саркастическое замечание"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D05","left":"comic timing","right":"комический ритм"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D06","left":"inside joke","right":"шутка для своих"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D07","left":"take literally","right":"понимать буквально"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('082bd36f-7045-5a10-b7c6-6fd4cef2d4bd', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D08","is_correct":true,"text":"The deadpan delivery makes the complaint sound serious until the final detail reveals that the speaker is joking."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8729aa84-04ce-5c1b-8ad0-6be2a398dafb', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The deadpan delivery makes the complaint sound serious until the final detail reveals that the speaker is joking.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Невозмутимая подача заставляет жалобу звучать серьёзно, пока последняя деталь не показывает, что говорящий шутит.","target_language":"en","word_bank":["The","deadpan","delivery","makes","the","complaint","sound","serious","until","the","final","detail","reveals","that","the","speaker","is","joking","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae043b6e-119c-5512-9a1f-f6f7c45fad89', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"deadpan delivery","instruction":"Выберите подходящее слово.","options":["deadpan delivery","sarcastic remark","inside joke"],"sentence_template":"The ___ makes the complaint sound serious until the final detail reveals that the speaker is joking."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37c686d1-f9d4-5855-b90a-be565144a701', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","deadpan","delivery","makes","the","complaint","sound","serious","until","the","final","detail","reveals","that","the","speaker","is","joking","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","joking","is","speaker","the","that","reveals","detail","final","the","until","serious","sound","complaint","the","makes","delivery","deadpan","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58f25a7b-30b4-5de1-bcee-d40e18e51581', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The deadpan delivery makes the complaint sound serious until the final detail reveals that the speaker is joking. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df889988-0804-5697-b6e6-7a4f4bb650f2', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The deadpan delivery makes the complaint sound serious until the final detail reveals that the speaker is joking. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Невозмутимая подача заставляет жалобу звучать серьёзно, пока последняя деталь не показывает, что говорящий шутит. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('721a71d1-43eb-5eb9-af95-1646a7bc0b6b', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The deadpan delivery makes the complaint sound serious until the final detail reveals that the speaker is joking.","translation":"Невозмутимая подача заставляет жалобу звучать серьёзно, пока последняя деталь не показывает, что говорящий шутит.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Recognising a Playful Tone"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('286bb728-a458-501b-8dda-b887f01f478b', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“deadpan delivery” means humour delivered without visible emotion.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D11","is_correct":true,"text":"humour delivered without visible emotion"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D12","is_correct":false,"text":"not intended to be taken completely seriously"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D13","is_correct":false,"text":"language making something seem less serious"}],"word":"deadpan delivery"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('799b9649-d2e9-54e4-a9ab-a66874dbf736', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The deadpan delivery makes the complaint sound serious until the final detail reveals that the speaker is joking.","explanation":"The missing everyday expression is “deadpan delivery”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"deadpan delivery","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D14","is_correct":true},{"audio_text":"understatement","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D15","is_correct":false},{"audio_text":"comic timing","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D16","is_correct":false}],"sentence_template":"The ___ makes the complaint sound serious until the final detail reveals that the speaker is joking."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aee2f5a9-b658-57d9-b5a5-06c59402f81e', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"deadpan delivery","explanation":"The recording uses “deadpan delivery” naturally in context.","hint_prefix":"dead","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ makes the complaint sound serious until the final detail reveals that the speaker is joking."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a459d830-9f80-5bc3-851e-5dcec887dbfe', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"deadpan delivery","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D17","text":"deadpan delivery"},{"audio_text":"tongue-in-cheek","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D18","text":"tongue-in-cheek"},{"audio_text":"understatement","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D19","text":"understatement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01276721-4087-57eb-8bba-2cd9782cab3b', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Recognising a Playful Tone”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D20","is_correct":true,"text":"The deadpan delivery makes the complaint sound serious until the final detail reveals that the speaker is joking."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L1_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', NULL, 'Скрытый смысл и реакция', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Understanding Sarcasm","ru":"Скрытый смысл и реакция"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('760c162e-0e7b-5269-b586-6945c15ceed2', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D01","left":"deadpan delivery","right":"невозмутимая подача"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D02","left":"tongue-in-cheek","right":"иронический"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D03","left":"understatement","right":"преуменьшение"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D04","left":"sarcastic remark","right":"саркастическое замечание"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D05","left":"comic timing","right":"комический ритм"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D06","left":"inside joke","right":"шутка для своих"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D07","left":"take literally","right":"понимать буквально"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca28f382-9399-5f70-8f32-5b8be936d727', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D08","is_correct":true,"text":"Calling the disaster “slightly inconvenient” is a tongue-in-cheek understatement, not an attempt to minimise the real problem."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('569a140a-b302-54fe-84d8-d0dedd9b1ee5', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Calling the disaster “slightly inconvenient” is a tongue-in-cheek understatement, not an attempt to minimise the real problem.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Назвать катастрофу «слегка неудобной» — это ироническое преуменьшение, а не попытка уменьшить реальную проблему.","target_language":"en","word_bank":["Calling","the","disaster","“","slightly","inconvenient","”","is","a","tongue-in","-","cheek","understatement",",","not","an","attempt","to","minimise","the","real","problem","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0781990b-0789-5fce-9485-76d5e8071fa6', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"tongue-in-cheek","instruction":"Выберите подходящее слово.","options":["tongue-in-cheek","comic timing","take literally"],"sentence_template":"Calling the disaster “slightly inconvenient” is a ___ understatement, not an attempt to minimise the real problem."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d4ad18f-0f52-5e82-abb3-1b526c025244', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Calling","the","disaster","“","slightly","inconvenient","”","is","a","tongue-in","-","cheek","understatement",",","not","an","attempt","to","minimise","the","real","problem","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","problem","real","the","minimise","to","attempt","an","not",",","understatement","cheek","-","tongue-in","a","is","”","inconvenient","slightly","“","disaster","the","Calling"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcda04a1-844f-5acb-87f3-30c8fbeb2d76', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Calling the disaster “slightly inconvenient” is a tongue-in-cheek understatement, not an attempt to minimise the real problem. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96f60451-ee98-50a5-bbc7-0d83f7ff0910', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Calling the disaster “slightly inconvenient” is a tongue-in-cheek understatement, not an attempt to minimise the real problem. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Назвать катастрофу «слегка неудобной» — это ироническое преуменьшение, а не попытка уменьшить реальную проблему. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8afc0c9-d861-5e21-808c-f72159681912', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Calling the disaster “slightly inconvenient” is a tongue-in-cheek understatement, not an attempt to minimise the real problem.","translation":"Назвать катастрофу «слегка неудобной» — это ироническое преуменьшение, а не попытка уменьшить реальную проблему.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Understanding Sarcasm"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('248da53c-61ea-574e-845a-d9499d87cbc1', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“tongue-in-cheek” means not intended to be taken completely seriously.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D11","is_correct":true,"text":"not intended to be taken completely seriously"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D12","is_correct":false,"text":"language making something seem less serious"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D13","is_correct":false,"text":"words meaning the opposite in order to mock or criticise"}],"word":"tongue-in-cheek"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7e3d03a-1336-58dc-8ec6-c963f453b427', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Calling the disaster “slightly inconvenient” is a tongue-in-cheek understatement, not an attempt to minimise the real problem.","explanation":"The missing everyday expression is “tongue-in-cheek”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tongue-in-cheek","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D14","is_correct":true},{"audio_text":"sarcastic remark","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D15","is_correct":false},{"audio_text":"inside joke","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D16","is_correct":false}],"sentence_template":"Calling the disaster “slightly inconvenient” is a ___ understatement, not an attempt to minimise the real problem."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bf27bd6-b0e1-51fe-910d-589751331a5c', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"tongue-in-cheek","explanation":"The recording uses “tongue-in-cheek” naturally in context.","hint_prefix":"tong","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Calling the disaster “slightly inconvenient” is a ___ understatement, not an attempt to minimise the real problem."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0d2b2de-017e-5cf6-8642-bb45edc5d6f7', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"deadpan delivery","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D17","text":"deadpan delivery"},{"audio_text":"tongue-in-cheek","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D18","text":"tongue-in-cheek"},{"audio_text":"understatement","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D19","text":"understatement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffb2fb85-8819-5010-84ae-ab4f32c1871d', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Understanding Sarcasm”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D20","is_correct":true,"text":"Calling the disaster “slightly inconvenient” is a tongue-in-cheek understatement, not an attempt to minimise the real problem."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L2_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', NULL, 'Свободное воспроизведение', 'Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь.', '{"en":"Shadowing Understatement","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand fast, natural C1 speech in an everyday situation, recognise tone, idioms, and implied meaning, and reproduce connected speech accurately.","ru":"Понимать быструю естественную речь уровня C1 в повседневной ситуации, распознавать тон, идиомы и скрытый смысл и точно воспроизводить связную речь."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aff20eea-854e-5175-b233-2838bc1ecfe8', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D01","left":"deadpan delivery","right":"невозмутимая подача"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D02","left":"tongue-in-cheek","right":"иронический"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D03","left":"understatement","right":"преуменьшение"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D04","left":"sarcastic remark","right":"саркастическое замечание"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D05","left":"comic timing","right":"комический ритм"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D06","left":"inside joke","right":"шутка для своих"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D07","left":"take literally","right":"понимать буквально"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b06882e-3d01-5607-8f80-e4b211c8bf85', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response preserves the speaker’s everyday meaning, tone, qualification, and implied attitude.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D08","is_correct":true,"text":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D09","is_correct":false,"text":"The speaker means every word literally and expresses no attitude beyond the surface message."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D10","is_correct":false,"text":"The expressions are unrelated, so tone and context cannot clarify the message."}],"question":"Which interpretation best captures what the speaker really means?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afd76c88-4b30-5527-bbcf-f10b8bdad41c', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Саркастическое замечание не следует понимать буквально; его комический ритм передаёт раздражение через юмор.","target_language":"en","word_bank":["The","sarcastic","remark","should","not","be","taken","literally",";","its","comic","timing","signals","frustration","shared","through","humour","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a215912b-3853-5518-83f9-6d85a4964912', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"understatement","instruction":"Выберите подходящее слово.","options":["understatement","inside joke","deadpan delivery"],"sentence_template":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d9d2283-e7c5-54a7-9236-db36698127a9', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","sarcastic","remark","should","not","be","taken","literally",";","its","comic","timing","signals","frustration","shared","through","humour","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","humour","through","shared","frustration","signals","timing","comic","its",";","literally","taken","be","not","should","remark","sarcastic","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2803b2c7-bad8-5efe-a299-fe2bf30defe4', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16db4fc9-092a-5884-8408-8e9022f4a348', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour. Listen for what the speaker implies through stress and tone, not merely for the words that are explicitly stated. The wording sounds casual, but the pause and contrastive stress make the speaker’s real concern perfectly clear.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Саркастическое замечание не следует понимать буквально; его комический ритм передаёт раздражение через юмор. Слушайте, что говорящий подразумевает с помощью ударения и тона, а не только прямо произнесённые слова. Формулировка звучит непринуждённо, но пауза и контрастное ударение ясно передают настоящую обеспокоенность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85178965-ebd2-5cf2-a9d5-0c8023a974a9', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour.","translation":"Саркастическое замечание не следует понимать буквально; его комический ритм передаёт раздражение через юмор.","type":"dialogue"},{"character":"Friend","text":"Are you saying that directly, or am I supposed to read between the lines?","translation":"Ты говоришь это прямо или мне нужно читать между строк?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The literal words sound mild, but the timing, stress, and shared context reveal a stronger reaction."},{"is_correct":false,"text":"Tone never changes meaning, so only the dictionary definition matters."}],"text":"Which listening response fits the situation?","type":"choice"}],"title":"Shadowing Understatement"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d2bac9b-8753-55c4-b1d7-f7c91a0b7aae', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“understatement” means language making something seem less serious.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D11","is_correct":true,"text":"language making something seem less serious"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D12","is_correct":false,"text":"words meaning the opposite in order to mock or criticise"},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D13","is_correct":false,"text":"the timing that makes a joke effective"}],"word":"understatement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82f7c375-2c31-5bef-a69c-4df82e30db7f', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour.","explanation":"The missing everyday expression is “understatement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"understatement","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D14","is_correct":true},{"audio_text":"comic timing","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D15","is_correct":false},{"audio_text":"take literally","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D16","is_correct":false}],"sentence_template":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79b29e4c-a58e-564f-9732-42cef679a132', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"understatement","explanation":"The recording uses “understatement” naturally in context.","hint_prefix":"unde","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aee2bcb4-bb91-5d21-afbb-beb287b49b42', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each natural C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"deadpan delivery","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D17","text":"deadpan delivery"},{"audio_text":"tongue-in-cheek","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D18","text":"tongue-in-cheek"},{"audio_text":"understatement","id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D19","text":"understatement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('685b2332-e606-5ddc-a877-f5222677c417', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker really communicate in “Shadowing Understatement”?"}],"explanation":"The correct response captures the natural C1 message, including idiomatic meaning, tone, and implication.","instruction":"Ответьте.","options":[{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D20","is_correct":true,"text":"The sarcastic remark should not be taken literally; its comic timing signals frustration shared through humour."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D21","is_correct":false,"text":"The speaker used only literal language and communicated no attitude or implied meaning."},{"id":"C1_LISTENING_SHADOWING_HUMOUR_SARCASM_AND_UNDERSTATEMENT_L3_D22","is_correct":false,"text":"I heard several words, but everyday context cannot help interpret natural spoken English."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d305fee-e874-5f89-b528-39447d9988f3', 'en', 'deadpan delivery', 'невозмутимая подача', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48605991-870e-5bef-a266-c0a8eee5cedc', 'en', 'tongue-in-cheek', 'иронический', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8026f47-a299-5b77-8dd6-7cb7ea77924d', 'en', 'understatement', 'преуменьшение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('397145dd-7624-5e8e-8200-3cbf38984643', 'en', 'sarcastic remark', 'саркастическое замечание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91de8005-9214-5b02-b20a-e90a2c3e94a0', 'en', 'comic timing', 'комический ритм', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66c463cc-c69a-5fdb-81fb-009c5b984e79', 'en', 'inside joke', 'шутка для своих', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86e5e5e6-edd1-502e-80c6-7f514077aee6', 'en', 'take literally', 'понимать буквально', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d305fee-e874-5f89-b528-39447d9988f3', 'en', 'deadpan delivery', 'невозмутимая подача', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48605991-870e-5bef-a266-c0a8eee5cedc', 'en', 'tongue-in-cheek', 'иронический', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8026f47-a299-5b77-8dd6-7cb7ea77924d', 'en', 'understatement', 'преуменьшение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('397145dd-7624-5e8e-8200-3cbf38984643', 'en', 'sarcastic remark', 'саркастическое замечание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91de8005-9214-5b02-b20a-e90a2c3e94a0', 'en', 'comic timing', 'комический ритм', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66c463cc-c69a-5fdb-81fb-009c5b984e79', 'en', 'inside joke', 'шутка для своих', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86e5e5e6-edd1-502e-80c6-7f514077aee6', 'en', 'take literally', 'понимать буквально', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d305fee-e874-5f89-b528-39447d9988f3', 'en', 'deadpan delivery', 'невозмутимая подача', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48605991-870e-5bef-a266-c0a8eee5cedc', 'en', 'tongue-in-cheek', 'иронический', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8026f47-a299-5b77-8dd6-7cb7ea77924d', 'en', 'understatement', 'преуменьшение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('397145dd-7624-5e8e-8200-3cbf38984643', 'en', 'sarcastic remark', 'саркастическое замечание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91de8005-9214-5b02-b20a-e90a2c3e94a0', 'en', 'comic timing', 'комический ритм', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66c463cc-c69a-5fdb-81fb-009c5b984e79', 'en', 'inside joke', 'шутка для своих', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86e5e5e6-edd1-502e-80c6-7f514077aee6', 'en', 'take literally', 'понимать буквально', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadpan delivery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'tongue-in-cheek' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'understatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'sarcastic remark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'comic timing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'inside joke' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '593c0574-dcd4-5fe5-8c68-84e2d5e2731d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'take literally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadpan delivery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'tongue-in-cheek' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'understatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sarcastic remark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'comic timing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'inside joke' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, '4e4222aa-7a75-5c20-b3ac-fd050a9e92d4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'take literally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadpan delivery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'tongue-in-cheek' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'understatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sarcastic remark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'comic timing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'inside joke' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18ab7d7f-6f96-5fc9-ae46-852ce261c9b7', id, 'ef49395d-6dc0-5e4c-b3fe-e5aa0e71b2ea', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'take literally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
