-- Track: B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b35acb98-253a-5bc1-b104-74d0f2ca5b08', 'B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING', 'Естественные разговоры, отношение и скрытый смысл', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Естественные разговоры, отношение и скрытый смысл».', '{"en":"Natural Conversations, Attitude and Implied Meaning","ru":"Естественные разговоры, отношение и скрытый смысл"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for natural conversations, attitude and implied meaning.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Естественные разговоры, отношение и скрытый смысл»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c4509864-d5b2-5176-9759-5eebcb6541dd', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Recognising Speaker Attitude","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74c08de2-1f36-53d9-9f9c-81d305d95a61', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D01","left":"reluctant","right":"неохотный"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D02","left":"enthusiastic","right":"воодушевлённый"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D03","left":"understatement","right":"преуменьшение"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D04","left":"imply","right":"подразумевать"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D05","left":"hesitation","right":"колебание"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D06","left":"sarcastic","right":"саркастический"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D07","left":"mixed feelings","right":"смешанные чувства"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16ce8a29-bf67-58c5-8164-4a2b6aa23ede', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D08","is_correct":true,"text":"I would not say I am reluctant exactly, but I do have mixed feelings about changing the plan at such short notice."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3115f631-aa79-5ad8-8562-76e5b8c78fd0', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I would not say I am reluctant exactly, but I do have mixed feelings about changing the plan at such short notice.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я бы не сказал, что я прямо неохотно соглашаюсь, но у меня действительно смешанные чувства по поводу изменения плана в такой короткий срок.","target_language":"en","word_bank":["I","would","not","say","I","am","reluctant","exactly",",","but","I","do","have","mixed","feelings","about","changing","the","plan","at","such","short","notice","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c689e471-77e1-50dd-b448-e8b03862c387', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reluctant","instruction":"Выберите подходящее слово.","options":["reluctant","imply","sarcastic"],"sentence_template":"I would not say I am ___ exactly, but I do have mixed feelings about changing the plan at such short notice."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e91ff410-0028-5d3a-8e4d-a68ca3457fd4', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","would","not","say","I","am","reluctant","exactly",",","but","I","do","have","mixed","feelings","about","changing","the","plan","at","such","short","notice","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","notice","short","such","at","plan","the","changing","about","feelings","mixed","have","do","I","but",",","exactly","reluctant","am","I","say","not","would","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('133a1b0f-555d-5d6c-b172-eba714009624', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I would not say I am reluctant exactly, but I do have mixed feelings about changing the plan at such short notice. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b5f37b6-5296-5ab1-b7f8-48cf0728dc6f', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I would not say I am reluctant exactly, but I do have mixed feelings about changing the plan at such short notice. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Я бы не сказал, что я прямо неохотно соглашаюсь, но у меня действительно смешанные чувства по поводу изменения плана в такой короткий срок. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f350adb-459c-54b9-9045-c02fcbb4359d', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I would not say I am reluctant exactly, but I do have mixed feelings about changing the plan at such short notice.","translation":"Я бы не сказал, что я прямо неохотно соглашаюсь, но у меня действительно смешанные чувства по поводу изменения плана в такой короткий срок.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Recognising Speaker Attitude"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c80d4b0-ae3f-5478-8e24-4a2756e5ebf4', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reluctant” means unwilling and hesitant.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D11","is_correct":true,"text":"unwilling and hesitant"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D12","is_correct":false,"text":"showing strong interest or excitement"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D13","is_correct":false,"text":"language making something seem less important than it is"}],"word":"reluctant"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('089cab44-0961-5dba-bd0e-e29dc2ed9f77', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I would not say I am reluctant exactly, but I do have mixed feelings about changing the plan at such short notice.","explanation":"The missing expression in the recording is “reluctant”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reluctant","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D14","is_correct":true},{"audio_text":"understatement","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D15","is_correct":false},{"audio_text":"hesitation","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D16","is_correct":false}],"sentence_template":"I would not say I am ___ exactly, but I do have mixed feelings about changing the plan at such short notice."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f28f2923-9f3c-566d-8c5d-675105fbbc47', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reluctant","explanation":"The recording uses “reluctant” to convey the intended B2 meaning.","hint_prefix":"relu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I would not say I am ___ exactly, but I do have mixed feelings about changing the plan at such short notice."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7cfe2ef5-d7c5-5959-b913-cea39baa0032', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reluctant","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D17","text":"reluctant"},{"audio_text":"enthusiastic","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D18","text":"enthusiastic"},{"audio_text":"understatement","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D19","text":"understatement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34ec0ce6-bec3-5ffb-b387-873c53186b48', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Recognising Speaker Attitude”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D20","is_correct":true,"text":"I would not say I am reluctant exactly, but I do have mixed feelings about changing the plan at such short notice."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b35acb98-253a-5bc1-b104-74d0f2ca5b08', 'c4509864-d5b2-5176-9759-5eebcb6541dd', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d53699c2-a964-5dbe-b09d-c56b7ca28c78', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Understanding Implied Meaning","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7341d08-0c7e-5452-bb06-41b36a555681', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D01","left":"reluctant","right":"неохотный"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D02","left":"enthusiastic","right":"воодушевлённый"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D03","left":"understatement","right":"преуменьшение"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D04","left":"imply","right":"подразумевать"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D05","left":"hesitation","right":"колебание"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D06","left":"sarcastic","right":"саркастический"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D07","left":"mixed feelings","right":"смешанные чувства"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ea0e839-d4cb-5c80-95a7-5eff5b72c7c0', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D08","is_correct":true,"text":"Her hesitation implied that she had reservations, even though her words sounded reasonably enthusiastic."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b9de922-aaed-52b2-ac8e-be81c81e2094', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Her hesitation implied that she had reservations, even though her words sounded reasonably enthusiastic.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Её колебание подразумевало, что у неё были сомнения, хотя слова звучали довольно воодушевлённо.","target_language":"en","word_bank":["Her","hesitation","implied","that","she","had","reservations",",","even","though","her","words","sounded","reasonably","enthusiastic","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8d6d94b-a2c4-510e-b136-35313ce7662a', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"enthusiastic","instruction":"Выберите подходящее слово.","options":["enthusiastic","hesitation","mixed feelings"],"sentence_template":"Her hesitation implied that she had reservations, even though her words sounded reasonably ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14dcba2c-be87-54d9-ae00-f6374f202340', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Her","hesitation","implied","that","she","had","reservations",",","even","though","her","words","sounded","reasonably","enthusiastic","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","enthusiastic","reasonably","sounded","words","her","though","even",",","reservations","had","she","that","implied","hesitation","Her"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1507deea-e9ca-5e6c-87d5-7520a549c016', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Her hesitation implied that she had reservations, even though her words sounded reasonably enthusiastic. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('875a9668-a851-59e0-87fe-4f51dfd0789a', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Her hesitation implied that she had reservations, even though her words sounded reasonably enthusiastic. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Её колебание подразумевало, что у неё были сомнения, хотя слова звучали довольно воодушевлённо. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4549336a-990b-5874-a2f1-e75e94f461e8', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Her hesitation implied that she had reservations, even though her words sounded reasonably enthusiastic.","translation":"Её колебание подразумевало, что у неё были сомнения, хотя слова звучали довольно воодушевлённо.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Understanding Implied Meaning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90eb0fdb-8dd1-59ea-8da7-e42a22995692', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“enthusiastic” means showing strong interest or excitement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D11","is_correct":true,"text":"showing strong interest or excitement"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D12","is_correct":false,"text":"language making something seem less important than it is"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D13","is_correct":false,"text":"communicate an idea indirectly"}],"word":"enthusiastic"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b00989dc-e335-53bf-afb0-6c824c2c2749', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Her hesitation implied that she had reservations, even though her words sounded reasonably enthusiastic.","explanation":"The missing expression in the recording is “enthusiastic”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"enthusiastic","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D14","is_correct":true},{"audio_text":"imply","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D15","is_correct":false},{"audio_text":"sarcastic","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D16","is_correct":false}],"sentence_template":"Her hesitation implied that she had reservations, even though her words sounded reasonably ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f15e72ba-6686-5cdb-87f3-5a22e025c52d', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"enthusiastic","explanation":"The recording uses “enthusiastic” to convey the intended B2 meaning.","hint_prefix":"enth","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Her hesitation implied that she had reservations, even though her words sounded reasonably ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f6148bb-832c-5deb-bf04-1f53634785c4', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reluctant","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D17","text":"reluctant"},{"audio_text":"enthusiastic","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D18","text":"enthusiastic"},{"audio_text":"understatement","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D19","text":"understatement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dd43a89-5c0a-56ae-b8e4-7c58ba4a0f84', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Understanding Implied Meaning”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D20","is_correct":true,"text":"Her hesitation implied that she had reservations, even though her words sounded reasonably enthusiastic."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b35acb98-253a-5bc1-b104-74d0f2ca5b08', 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c43733d9-4fad-5b9e-b0cd-30046e55e12a', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing Nuanced Responses","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40e92978-2844-563d-9e01-cc2c02b56e9f', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D01","left":"reluctant","right":"неохотный"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D02","left":"enthusiastic","right":"воодушевлённый"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D03","left":"understatement","right":"преуменьшение"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D04","left":"imply","right":"подразумевать"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D05","left":"hesitation","right":"колебание"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D06","left":"sarcastic","right":"саркастический"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D07","left":"mixed feelings","right":"смешанные чувства"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5b23cf9-9ecb-50e6-9eda-f5f0d819d349', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D08","is_correct":true,"text":"The remark was an understatement rather than a literal description, and the slightly sarcastic tone made that clear."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25ba14cc-e909-501d-99aa-965dad9be06c', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The remark was an understatement rather than a literal description, and the slightly sarcastic tone made that clear.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Замечание было преуменьшением, а не буквальным описанием, и слегка саркастический тон ясно это показал.","target_language":"en","word_bank":["The","remark","was","an","understatement","rather","than","a","literal","description",",","and","the","slightly","sarcastic","tone","made","that","clear","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea1709a5-4c5f-5418-bc52-12b003802b98', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"understatement","instruction":"Выберите подходящее слово.","options":["understatement","sarcastic","reluctant"],"sentence_template":"The remark was an ___ rather than a literal description, and the slightly sarcastic tone made that clear."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a62ba88-d84e-50fa-b033-3fe2352e535a', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","remark","was","an","understatement","rather","than","a","literal","description",",","and","the","slightly","sarcastic","tone","made","that","clear","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","clear","that","made","tone","sarcastic","slightly","the","and",",","description","literal","a","than","rather","understatement","an","was","remark","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f59b488-9e3a-5463-82b2-a3f648578e4c', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The remark was an understatement rather than a literal description, and the slightly sarcastic tone made that clear. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca956cda-6729-5182-b9d5-106acd52f278', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The remark was an understatement rather than a literal description, and the slightly sarcastic tone made that clear. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Замечание было преуменьшением, а не буквальным описанием, и слегка саркастический тон ясно это показал. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6811be94-aec0-58c9-858c-818d46c39dae', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The remark was an understatement rather than a literal description, and the slightly sarcastic tone made that clear.","translation":"Замечание было преуменьшением, а не буквальным описанием, и слегка саркастический тон ясно это показал.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing Nuanced Responses"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e8a770b-67f0-5450-8f38-3bd53dc72a01', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“understatement” means language making something seem less important than it is.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D11","is_correct":true,"text":"language making something seem less important than it is"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D12","is_correct":false,"text":"communicate an idea indirectly"},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D13","is_correct":false,"text":"a pause or sign of uncertainty"}],"word":"understatement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13b42f9a-30ba-5159-b695-776ea44c0786', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The remark was an understatement rather than a literal description, and the slightly sarcastic tone made that clear.","explanation":"The missing expression in the recording is “understatement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"understatement","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D14","is_correct":true},{"audio_text":"hesitation","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D15","is_correct":false},{"audio_text":"mixed feelings","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D16","is_correct":false}],"sentence_template":"The remark was an ___ rather than a literal description, and the slightly sarcastic tone made that clear."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08f873bd-bcfc-59a2-95c8-cb6180754e27', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"understatement","explanation":"The recording uses “understatement” to convey the intended B2 meaning.","hint_prefix":"unde","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The remark was an ___ rather than a literal description, and the slightly sarcastic tone made that clear."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06cd00e7-3e7f-56d7-ab8b-0ebe6d8a67db', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reluctant","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D17","text":"reluctant"},{"audio_text":"enthusiastic","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D18","text":"enthusiastic"},{"audio_text":"understatement","id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D19","text":"understatement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13569848-e6c8-592d-a439-85c7484292d6', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing Nuanced Responses”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D20","is_correct":true,"text":"The remark was an understatement rather than a literal description, and the slightly sarcastic tone made that clear."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NATURAL_CONVERSATIONS_ATTITUDE_AND_IMPLIED_MEANING_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b35acb98-253a-5bc1-b104-74d0f2ca5b08', 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91bb1036-acb0-5579-863f-5ad398b7538d', 'en', 'reluctant', 'неохотный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d152d494-1d9e-5613-af28-051d377790d6', 'en', 'enthusiastic', 'воодушевлённый', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8026f47-a299-5b77-8dd6-7cb7ea77924d', 'en', 'understatement', 'преуменьшение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad20d1c2-1c45-598d-969c-ba8a7d703e99', 'en', 'hesitation', 'колебание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e355f937-f9c8-558c-a04a-1236e97605d6', 'en', 'sarcastic', 'саркастический', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ea45370-8154-516f-b601-3d5f48e5c507', 'en', 'mixed feelings', 'смешанные чувства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91bb1036-acb0-5579-863f-5ad398b7538d', 'en', 'reluctant', 'неохотный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d152d494-1d9e-5613-af28-051d377790d6', 'en', 'enthusiastic', 'воодушевлённый', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8026f47-a299-5b77-8dd6-7cb7ea77924d', 'en', 'understatement', 'преуменьшение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad20d1c2-1c45-598d-969c-ba8a7d703e99', 'en', 'hesitation', 'колебание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e355f937-f9c8-558c-a04a-1236e97605d6', 'en', 'sarcastic', 'саркастический', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ea45370-8154-516f-b601-3d5f48e5c507', 'en', 'mixed feelings', 'смешанные чувства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91bb1036-acb0-5579-863f-5ad398b7538d', 'en', 'reluctant', 'неохотный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d152d494-1d9e-5613-af28-051d377790d6', 'en', 'enthusiastic', 'воодушевлённый', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8026f47-a299-5b77-8dd6-7cb7ea77924d', 'en', 'understatement', 'преуменьшение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad20d1c2-1c45-598d-969c-ba8a7d703e99', 'en', 'hesitation', 'колебание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e355f937-f9c8-558c-a04a-1236e97605d6', 'en', 'sarcastic', 'саркастический', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ea45370-8154-516f-b601-3d5f48e5c507', 'en', 'mixed feelings', 'смешанные чувства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c4509864-d5b2-5176-9759-5eebcb6541dd', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'reluctant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c4509864-d5b2-5176-9759-5eebcb6541dd', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'enthusiastic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c4509864-d5b2-5176-9759-5eebcb6541dd', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'understatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c4509864-d5b2-5176-9759-5eebcb6541dd', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c4509864-d5b2-5176-9759-5eebcb6541dd', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c4509864-d5b2-5176-9759-5eebcb6541dd', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'sarcastic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c4509864-d5b2-5176-9759-5eebcb6541dd', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'mixed feelings' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'reluctant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'enthusiastic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'understatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'sarcastic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'd53699c2-a964-5dbe-b09d-c56b7ca28c78', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'mixed feelings' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'reluctant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'enthusiastic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'understatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'sarcastic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b35acb98-253a-5bc1-b104-74d0f2ca5b08', id, 'c43733d9-4fad-5b9e-b0cd-30046e55e12a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'mixed feelings' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
