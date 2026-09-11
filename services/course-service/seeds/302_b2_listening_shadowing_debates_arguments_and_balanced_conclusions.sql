-- Track: B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f44736c9-b449-5abc-b420-63f82fcda6d8', 'B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS', 'Дебаты, аргументы и взвешенные выводы', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Дебаты, аргументы и взвешенные выводы».', '{"en":"Debates, Arguments and Balanced Conclusions","ru":"Дебаты, аргументы и взвешенные выводы"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for debates, arguments and balanced conclusions.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Дебаты, аргументы и взвешенные выводы»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('093128af-720f-519b-8e7c-990c582116cd', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Identifying Claims and Evidence","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('273eef2d-6dbc-597d-b3ac-8706ee51f731', '093128af-720f-519b-8e7c-990c582116cd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D01","left":"central claim","right":"основной тезис"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D02","left":"supporting evidence","right":"подтверждающие доказательства"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D03","left":"counterargument","right":"контраргумент"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D04","left":"concede a point","right":"признать довод"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D05","left":"challenge an assumption","right":"оспорить предположение"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D06","left":"qualify a conclusion","right":"уточнить вывод"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D07","left":"on balance","right":"в целом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5e14b93-ac4f-5036-aa83-516b7cdeaa5e', '093128af-720f-519b-8e7c-990c582116cd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D08","is_correct":true,"text":"The central claim is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92018ba8-4671-5c95-a640-daeaebb7d066', '093128af-720f-519b-8e7c-990c582116cd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The central claim is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Основной тезис ясен, но подтверждающие доказательства устанавливают корреляцию, а не прямую причину, предложенную выступающим.","target_language":"en","word_bank":["The","central","claim","is","clear",",","but","the","supporting","evidence","establishes","correlation","rather","than","the","direct","cause","suggested","by","the","speaker","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0efb5919-a626-5856-a27b-7955989146e5', '093128af-720f-519b-8e7c-990c582116cd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"central claim","instruction":"Выберите подходящее слово.","options":["central claim","concede a point","qualify a conclusion"],"sentence_template":"The ___ is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b22c19b-e2d4-5816-be79-9b78c9bffe58', '093128af-720f-519b-8e7c-990c582116cd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","central","claim","is","clear",",","but","the","supporting","evidence","establishes","correlation","rather","than","the","direct","cause","suggested","by","the","speaker","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","speaker","the","by","suggested","cause","direct","the","than","rather","correlation","establishes","evidence","supporting","the","but",",","clear","is","claim","central","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36f882b1-b1fc-5dbb-b61e-ac1c303afe73', '093128af-720f-519b-8e7c-990c582116cd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The central claim is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d05591ce-83cc-583f-a3ed-f86aff71faad', '093128af-720f-519b-8e7c-990c582116cd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The central claim is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Основной тезис ясен, но подтверждающие доказательства устанавливают корреляцию, а не прямую причину, предложенную выступающим. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('046e47e3-5685-5ded-9bf7-721d2bf3fad6', '093128af-720f-519b-8e7c-990c582116cd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The central claim is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker.","translation":"Основной тезис ясен, но подтверждающие доказательства устанавливают корреляцию, а не прямую причину, предложенную выступающим.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Identifying Claims and Evidence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f37cb1e1-77c0-50ed-ba1b-4c5909dfb288', '093128af-720f-519b-8e7c-990c582116cd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“central claim” means the main proposition an argument supports.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D11","is_correct":true,"text":"the main proposition an argument supports"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D12","is_correct":false,"text":"information used to justify a claim"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D13","is_correct":false,"text":"a reason opposing a position"}],"word":"central claim"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0059472c-38aa-5241-a4eb-0b5036820fae', '093128af-720f-519b-8e7c-990c582116cd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The central claim is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker.","explanation":"The missing expression in the recording is “central claim”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"central claim","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D14","is_correct":true},{"audio_text":"counterargument","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D15","is_correct":false},{"audio_text":"challenge an assumption","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D16","is_correct":false}],"sentence_template":"The ___ is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68552db6-14aa-56d0-a373-db0123a16e86', '093128af-720f-519b-8e7c-990c582116cd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"central claim","explanation":"The recording uses “central claim” to convey the intended B2 meaning.","hint_prefix":"cent","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15fbb4fa-79e3-5716-8b4d-ff18dca81aa0', '093128af-720f-519b-8e7c-990c582116cd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central claim","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D17","text":"central claim"},{"audio_text":"supporting evidence","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D18","text":"supporting evidence"},{"audio_text":"counterargument","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D19","text":"counterargument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83298cfb-6c9a-5b02-9a33-d60da8452ae0', '093128af-720f-519b-8e7c-990c582116cd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Identifying Claims and Evidence”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D20","is_correct":true,"text":"The central claim is clear, but the supporting evidence establishes correlation rather than the direct cause suggested by the speaker."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f44736c9-b449-5abc-b420-63f82fcda6d8', '093128af-720f-519b-8e7c-990c582116cd', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('849b6d3d-d8b7-5724-b036-e4a3703c23d5', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Following Counterarguments","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da230731-48ed-5a53-b8e6-6b284f296ed9', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D01","left":"central claim","right":"основной тезис"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D02","left":"supporting evidence","right":"подтверждающие доказательства"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D03","left":"counterargument","right":"контраргумент"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D04","left":"concede a point","right":"признать довод"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D05","left":"challenge an assumption","right":"оспорить предположение"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D06","left":"qualify a conclusion","right":"уточнить вывод"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D07","left":"on balance","right":"в целом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c947565-727f-5070-bd27-ef0c72f56bbe', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D08","is_correct":true,"text":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f930418e-9bad-52e3-af39-bbdb8d5793f6', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Контраргумент признаёт довод об удобстве, прежде чем оспорить предположение, что эффективность всегда повышает благополучие.","target_language":"en","word_bank":["The","counterargument","concedes","a","point","about","convenience","before","challenging","the","assumption","that","efficiency","always","improves","wellbeing","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38b74bae-d67b-5de5-883c-af0702401871', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"supporting evidence","instruction":"Выберите подходящее слово.","options":["supporting evidence","challenge an assumption","on balance"],"sentence_template":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95fdb116-a993-5b64-9bd8-cdaa3b4ed73f', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","counterargument","concedes","a","point","about","convenience","before","challenging","the","assumption","that","efficiency","always","improves","wellbeing","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","wellbeing","improves","always","efficiency","that","assumption","the","challenging","before","convenience","about","point","a","concedes","counterargument","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2163e050-0350-5f40-b7c6-e5858ae03ed0', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a27d2fa3-5c85-5782-bbe8-2539fa2fb89a', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Контраргумент признаёт довод об удобстве, прежде чем оспорить предположение, что эффективность всегда повышает благополучие. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1a1ef7e-19bd-5366-b068-c9512d0d43cc', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing.","translation":"Контраргумент признаёт довод об удобстве, прежде чем оспорить предположение, что эффективность всегда повышает благополучие.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Following Counterarguments"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db1458b3-16cf-5994-82c6-7dedcf448c94', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“supporting evidence” means information used to justify a claim.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D11","is_correct":true,"text":"information used to justify a claim"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D12","is_correct":false,"text":"a reason opposing a position"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D13","is_correct":false,"text":"accept that part of another view is valid"}],"word":"supporting evidence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b2023bc-b5ec-51a4-b047-32e96bfb31ea', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing.","explanation":"The missing expression in the recording is “supporting evidence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"supporting evidence","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D14","is_correct":true},{"audio_text":"concede a point","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D15","is_correct":false},{"audio_text":"qualify a conclusion","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D16","is_correct":false}],"sentence_template":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3a60dc7-d03c-572e-8b7c-b9c289369375', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"supporting evidence","explanation":"The recording uses “supporting evidence” to convey the intended B2 meaning.","hint_prefix":"supp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('502e4838-b981-5a9e-88bc-4aa72e3fcdc4', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central claim","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D17","text":"central claim"},{"audio_text":"supporting evidence","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D18","text":"supporting evidence"},{"audio_text":"counterargument","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D19","text":"counterargument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e7cda6d-52c5-570c-87a2-49d2bfbb2698', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Following Counterarguments”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D20","is_correct":true,"text":"The counterargument concedes a point about convenience before challenging the assumption that efficiency always improves wellbeing."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f44736c9-b449-5abc-b420-63f82fcda6d8', '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1f47e276-a660-5000-8e64-bc51285a2c21', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing a Qualified Conclusion","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e57329ac-9973-5c63-a45b-37498fe7eff9', '1f47e276-a660-5000-8e64-bc51285a2c21', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D01","left":"central claim","right":"основной тезис"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D02","left":"supporting evidence","right":"подтверждающие доказательства"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D03","left":"counterargument","right":"контраргумент"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D04","left":"concede a point","right":"признать довод"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D05","left":"challenge an assumption","right":"оспорить предположение"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D06","left":"qualify a conclusion","right":"уточнить вывод"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D07","left":"on balance","right":"в целом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7b8cd84-7778-54d3-b3d0-46c2ff81b7ff', '1f47e276-a660-5000-8e64-bc51285a2c21', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D08","is_correct":true,"text":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcae2660-5c9a-5dff-82ac-5f97aa5b7b41', '1f47e276-a660-5000-8e64-bc51285a2c21', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В целом политика представляется полезной, хотя вывод необходимо уточнить, поскольку её долгосрочные последствия остаются неопределёнными.","target_language":"en","word_bank":["On","balance",",","the","policy","appears","beneficial",",","although","the","conclusion","must","be","qualified","because","its","long-term","effects","remain","uncertain","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bea671d3-2783-5051-afea-553ea38068f2', '1f47e276-a660-5000-8e64-bc51285a2c21', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"counterargument","instruction":"Выберите подходящее слово.","options":["counterargument","qualify a conclusion","central claim"],"sentence_template":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37e9e262-120f-54e6-a8a7-6a6c87d2b624', '1f47e276-a660-5000-8e64-bc51285a2c21', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["On","balance",",","the","policy","appears","beneficial",",","although","the","conclusion","must","be","qualified","because","its","long-term","effects","remain","uncertain","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","uncertain","remain","effects","long-term","its","because","qualified","be","must","conclusion","the","although",",","beneficial","appears","policy","the",",","balance","On"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc91e8d1-d341-5e8a-8461-753b6d0a8dc0', '1f47e276-a660-5000-8e64-bc51285a2c21', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae79b58e-86b0-5cb6-afd0-adfd7e434f85', '1f47e276-a660-5000-8e64-bc51285a2c21', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"В целом политика представляется полезной, хотя вывод необходимо уточнить, поскольку её долгосрочные последствия остаются неопределёнными. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89d6e869-783a-5151-aaf3-1953291e1f50', '1f47e276-a660-5000-8e64-bc51285a2c21', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain.","translation":"В целом политика представляется полезной, хотя вывод необходимо уточнить, поскольку её долгосрочные последствия остаются неопределёнными.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing a Qualified Conclusion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3299e2a3-9601-5e01-afb9-39b9e1593c3e', '1f47e276-a660-5000-8e64-bc51285a2c21', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“counterargument” means a reason opposing a position.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D11","is_correct":true,"text":"a reason opposing a position"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D12","is_correct":false,"text":"accept that part of another view is valid"},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D13","is_correct":false,"text":"question an unstated belief behind an argument"}],"word":"counterargument"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b56f92df-9f45-5e25-bd78-a6e754cceb0f', '1f47e276-a660-5000-8e64-bc51285a2c21', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain.","explanation":"The missing expression in the recording is “counterargument”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"counterargument","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D14","is_correct":true},{"audio_text":"challenge an assumption","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D15","is_correct":false},{"audio_text":"on balance","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D16","is_correct":false}],"sentence_template":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e716743-7ee9-5638-a3f0-5cf5bf750ec6', '1f47e276-a660-5000-8e64-bc51285a2c21', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"counterargument","explanation":"The recording uses “counterargument” to convey the intended B2 meaning.","hint_prefix":"coun","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bab1a38c-ad60-567b-9534-b3f41e750db5', '1f47e276-a660-5000-8e64-bc51285a2c21', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central claim","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D17","text":"central claim"},{"audio_text":"supporting evidence","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D18","text":"supporting evidence"},{"audio_text":"counterargument","id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D19","text":"counterargument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91755acf-71a7-5a9b-a265-949230ada375', '1f47e276-a660-5000-8e64-bc51285a2c21', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing a Qualified Conclusion”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D20","is_correct":true,"text":"On balance, the policy appears beneficial, although the conclusion must be qualified because its long-term effects remain uncertain."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_DEBATES_ARGUMENTS_AND_BALANCED_CONCLUSIONS_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f44736c9-b449-5abc-b420-63f82fcda6d8', '1f47e276-a660-5000-8e64-bc51285a2c21', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2e93ed1-e528-54eb-a24a-4376c425dfa7', 'en', 'central claim', 'основной тезис', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a65097b-5c7b-5868-ac72-2922c0353637', 'en', 'supporting evidence', 'подтверждающие доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc0776c3-9295-5011-b4b4-db832e238e56', 'en', 'concede a point', 'признать довод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0f4774f-4832-5619-8ce1-4fe3b27b4774', 'en', 'challenge an assumption', 'оспорить предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cedcad6-390a-5c2a-96b5-0c1e701bdec2', 'en', 'qualify a conclusion', 'уточнить вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c575b8c7-bade-5f30-9e8a-d62026117085', 'en', 'on balance', 'в целом', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2e93ed1-e528-54eb-a24a-4376c425dfa7', 'en', 'central claim', 'основной тезис', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a65097b-5c7b-5868-ac72-2922c0353637', 'en', 'supporting evidence', 'подтверждающие доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc0776c3-9295-5011-b4b4-db832e238e56', 'en', 'concede a point', 'признать довод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0f4774f-4832-5619-8ce1-4fe3b27b4774', 'en', 'challenge an assumption', 'оспорить предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cedcad6-390a-5c2a-96b5-0c1e701bdec2', 'en', 'qualify a conclusion', 'уточнить вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c575b8c7-bade-5f30-9e8a-d62026117085', 'en', 'on balance', 'в целом', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2e93ed1-e528-54eb-a24a-4376c425dfa7', 'en', 'central claim', 'основной тезис', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a65097b-5c7b-5868-ac72-2922c0353637', 'en', 'supporting evidence', 'подтверждающие доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc0776c3-9295-5011-b4b4-db832e238e56', 'en', 'concede a point', 'признать довод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0f4774f-4832-5619-8ce1-4fe3b27b4774', 'en', 'challenge an assumption', 'оспорить предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cedcad6-390a-5c2a-96b5-0c1e701bdec2', 'en', 'qualify a conclusion', 'уточнить вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c575b8c7-bade-5f30-9e8a-d62026117085', 'en', 'on balance', 'в целом', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '093128af-720f-519b-8e7c-990c582116cd', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'central claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '093128af-720f-519b-8e7c-990c582116cd', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '093128af-720f-519b-8e7c-990c582116cd', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '093128af-720f-519b-8e7c-990c582116cd', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '093128af-720f-519b-8e7c-990c582116cd', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'challenge an assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '093128af-720f-519b-8e7c-990c582116cd', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '093128af-720f-519b-8e7c-990c582116cd', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'on balance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'central claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'challenge an assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '849b6d3d-d8b7-5724-b036-e4a3703c23d5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'on balance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '1f47e276-a660-5000-8e64-bc51285a2c21', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'central claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '1f47e276-a660-5000-8e64-bc51285a2c21', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '1f47e276-a660-5000-8e64-bc51285a2c21', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '1f47e276-a660-5000-8e64-bc51285a2c21', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '1f47e276-a660-5000-8e64-bc51285a2c21', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'challenge an assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '1f47e276-a660-5000-8e64-bc51285a2c21', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f44736c9-b449-5abc-b420-63f82fcda6d8', id, '1f47e276-a660-5000-8e64-bc51285a2c21', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'on balance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
