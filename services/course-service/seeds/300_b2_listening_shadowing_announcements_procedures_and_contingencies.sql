-- Track: B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3cfd28bd-0037-578e-8d9a-a909ad5e8204', 'B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES', 'Объявления, процедуры и действия при изменениях', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Объявления, процедуры и действия при изменениях».', '{"en":"Announcements, Procedures and Contingencies","ru":"Объявления, процедуры и действия при изменениях"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for announcements, procedures and contingencies.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Объявления, процедуры и действия при изменениях»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9ddd03f7-1c64-5519-a02c-43389cfe0017', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Extracting Conditions and Exceptions","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4516e2a-eb11-5754-8870-ca516720d18f', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D01","left":"contingency arrangement","right":"резервная договорённость"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D02","left":"subject to change","right":"может быть изменено"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D03","left":"eligibility requirement","right":"требование к участию"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D04","left":"exception applies","right":"действует исключение"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D05","left":"revised procedure","right":"изменённая процедура"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D06","left":"until further notice","right":"до дальнейшего уведомления"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D07","left":"comply with","right":"соблюдать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfec2c18-4ab7-5a10-b0a9-9745819271d4', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D08","is_correct":true,"text":"The timetable remains subject to change, so passengers should check the contingency arrangements before beginning their journey."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e54d78dd-b597-5f4f-b47f-48fa4a1b6387', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The timetable remains subject to change, so passengers should check the contingency arrangements before beginning their journey.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Расписание может быть изменено, поэтому пассажирам следует проверить резервные договорённости до начала поездки.","target_language":"en","word_bank":["The","timetable","remains","subject","to","change",",","so","passengers","should","check","the","contingency","arrangements","before","beginning","their","journey","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16c9f0c9-b7b9-57e7-ab16-ee075316ca76', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"contingency arrangement","instruction":"Выберите подходящее слово.","options":["contingency arrangement","exception applies","until further notice"],"sentence_template":"The timetable remains subject to change, so passengers should check the ___s before beginning their journey."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84921b09-179b-58cd-8899-3b535f6127fb', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","timetable","remains","subject","to","change",",","so","passengers","should","check","the","contingency","arrangements","before","beginning","their","journey","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","journey","their","beginning","before","arrangements","contingency","the","check","should","passengers","so",",","change","to","subject","remains","timetable","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae730b7f-49da-53b5-ae47-5945847b219c', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The timetable remains subject to change, so passengers should check the contingency arrangements before beginning their journey. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d984e6dd-2079-5a75-94e5-c699e0f43db1', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The timetable remains subject to change, so passengers should check the contingency arrangements before beginning their journey. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Расписание может быть изменено, поэтому пассажирам следует проверить резервные договорённости до начала поездки. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2216f4d2-bb6d-5635-8507-4b7229009b09', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The timetable remains subject to change, so passengers should check the contingency arrangements before beginning their journey.","translation":"Расписание может быть изменено, поэтому пассажирам следует проверить резервные договорённости до начала поездки.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Extracting Conditions and Exceptions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e462737-e05e-5f0d-9136-a7f06d38ce27', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“contingency arrangement” means an alternative plan for possible disruption.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D11","is_correct":true,"text":"an alternative plan for possible disruption"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D12","is_correct":false,"text":"not final and possibly revised"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D13","is_correct":false,"text":"a condition that must be met to qualify"}],"word":"contingency arrangement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8b14db7-18a9-5c2a-80df-5bc9d006d5ab', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The timetable remains subject to change, so passengers should check the contingency arrangements before beginning their journey.","explanation":"The missing expression in the recording is “contingency arrangement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"contingency arrangement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D14","is_correct":true},{"audio_text":"eligibility requirement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D15","is_correct":false},{"audio_text":"revised procedure","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D16","is_correct":false}],"sentence_template":"The timetable remains subject to change, so passengers should check the ___s before beginning their journey."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('656edf48-8f2f-5fee-8581-0d87f4aec086', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"contingency arrangement","explanation":"The recording uses “contingency arrangement” to convey the intended B2 meaning.","hint_prefix":"cont","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The timetable remains subject to change, so passengers should check the ___s before beginning their journey."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d1a63a1-88fd-57e7-9e27-1098548a628d', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"contingency arrangement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D17","text":"contingency arrangement"},{"audio_text":"subject to change","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D18","text":"subject to change"},{"audio_text":"eligibility requirement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D19","text":"eligibility requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b81325b-6f00-55c3-a5d9-291e8009a751', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Extracting Conditions and Exceptions”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D20","is_correct":true,"text":"The timetable remains subject to change, so passengers should check the contingency arrangements before beginning their journey."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3cfd28bd-0037-578e-8d9a-a909ad5e8204', '9ddd03f7-1c64-5519-a02c-43389cfe0017', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('471ff3fe-5e37-586a-8082-03d0d8bcb62e', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Following Revised Procedures","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53f8325c-e9d5-55c7-b21d-0fa70f271d7b', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D01","left":"contingency arrangement","right":"резервная договорённость"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D02","left":"subject to change","right":"может быть изменено"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D03","left":"eligibility requirement","right":"требование к участию"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D04","left":"exception applies","right":"действует исключение"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D05","left":"revised procedure","right":"изменённая процедура"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D06","left":"until further notice","right":"до дальнейшего уведомления"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D07","left":"comply with","right":"соблюдать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a48dfc3-2b70-5d5a-88fd-4476c31ff792', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D08","is_correct":true,"text":"Under the revised procedure, visitors must register online unless an exception applies for urgent access."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aab04c68-347c-5030-ab31-c5be6335287f', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Under the revised procedure, visitors must register online unless an exception applies for urgent access.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Согласно изменённой процедуре посетители должны зарегистрироваться онлайн, если только для срочного доступа не действует исключение.","target_language":"en","word_bank":["Under","the","revised","procedure",",","visitors","must","register","online","unless","an","exception","applies","for","urgent","access","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fa5a37d-3947-5e5d-b869-b2da2aadb570', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"subject to change","instruction":"Выберите подходящее слово.","options":["subject to change","revised procedure","comply with"],"sentence_template":"Under the revised procedure, visitors must register online unless an exception applies for urgent access."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12e706a6-957e-5f26-aa70-fd1d8fc1a02e', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Under","the","revised","procedure",",","visitors","must","register","online","unless","an","exception","applies","for","urgent","access","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","access","urgent","for","applies","exception","an","unless","online","register","must","visitors",",","procedure","revised","the","Under"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fdf8c7d-d90a-568f-a9ae-3c75977a6281', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Under the revised procedure, visitors must register online unless an exception applies for urgent access. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c273bbe2-57b7-53bd-a0ae-971692b7e742', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Under the revised procedure, visitors must register online unless an exception applies for urgent access. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Согласно изменённой процедуре посетители должны зарегистрироваться онлайн, если только для срочного доступа не действует исключение. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85e0e606-e2fd-58b9-8f17-d3a6f9a8bafc', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Under the revised procedure, visitors must register online unless an exception applies for urgent access.","translation":"Согласно изменённой процедуре посетители должны зарегистрироваться онлайн, если только для срочного доступа не действует исключение.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Following Revised Procedures"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70be6419-e7fe-540e-851f-ec9f3575337d', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“subject to change” means not final and possibly revised.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D11","is_correct":true,"text":"not final and possibly revised"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D12","is_correct":false,"text":"a condition that must be met to qualify"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D13","is_correct":false,"text":"a special case modifies the general rule"}],"word":"subject to change"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40a05a31-0a52-51bf-9f25-08887ac8899b', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Under the revised procedure, visitors must register online unless an exception applies for urgent access.","explanation":"The missing expression in the recording is “subject to change”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"subject to change","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D14","is_correct":true},{"audio_text":"exception applies","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D15","is_correct":false},{"audio_text":"until further notice","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D16","is_correct":false}],"sentence_template":"Under the revised procedure, visitors must register online unless an exception applies for urgent access."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('653d6df3-cd0b-54c9-853f-2e4106e0f1ef', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"subject to change","explanation":"The recording uses “subject to change” to convey the intended B2 meaning.","hint_prefix":"subj","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Under the revised procedure, visitors must register online unless an exception applies for urgent access."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89a27fd5-b516-5be3-aa60-8269610160e6', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"contingency arrangement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D17","text":"contingency arrangement"},{"audio_text":"subject to change","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D18","text":"subject to change"},{"audio_text":"eligibility requirement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D19","text":"eligibility requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bd4c0c3-bd8d-5e53-a00d-7c0feab9fd7b', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Following Revised Procedures”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D20","is_correct":true,"text":"Under the revised procedure, visitors must register online unless an exception applies for urgent access."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3cfd28bd-0037-578e-8d9a-a909ad5e8204', '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f6487663-55fe-5705-8a6b-d5a49f42f396', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing Urgent Announcements","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d54a8ba-cfef-5336-9376-4e09077216c3', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D01","left":"contingency arrangement","right":"резервная договорённость"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D02","left":"subject to change","right":"может быть изменено"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D03","left":"eligibility requirement","right":"требование к участию"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D04","left":"exception applies","right":"действует исключение"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D05","left":"revised procedure","right":"изменённая процедура"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D06","left":"until further notice","right":"до дальнейшего уведомления"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D07","left":"comply with","right":"соблюдать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d9a2907-1529-53d8-b452-7e900992c8ea', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D08","is_correct":true,"text":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('971f3f51-d706-5132-918b-2ad71c6fd75a', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility.","instruction":"Соберите перевод.","source_language":"ru","source_text":"До дальнейшего уведомления все участники должны соблюдать временные правила безопасности и сохранять подтверждение своего права на участие.","target_language":"en","word_bank":["Until","further","notice",",","all","participants","must","comply","with","the","temporary","safety","guidance","and","retain","confirmation","of","their","eligibility","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f17f938-cd9e-5ac7-958e-13007b3dfb3c', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"eligibility requirement","instruction":"Выберите подходящее слово.","options":["eligibility requirement","until further notice","contingency arrangement"],"sentence_template":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28476b17-dbe6-53a9-974a-fcfd171bfbbc', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Until","further","notice",",","all","participants","must","comply","with","the","temporary","safety","guidance","and","retain","confirmation","of","their","eligibility","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","eligibility","their","of","confirmation","retain","and","guidance","safety","temporary","the","with","comply","must","participants","all",",","notice","further","Until"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c1db560-4015-5714-b84d-89adb55c84d6', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98a36019-824b-58e4-b9e7-40a8883f3913', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"До дальнейшего уведомления все участники должны соблюдать временные правила безопасности и сохранять подтверждение своего права на участие. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('353f958a-1cb7-5da9-b441-49012387fdbf', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility.","translation":"До дальнейшего уведомления все участники должны соблюдать временные правила безопасности и сохранять подтверждение своего права на участие.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing Urgent Announcements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9098bb30-bd0f-5cd8-ba2a-f74f83b26eab', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“eligibility requirement” means a condition that must be met to qualify.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D11","is_correct":true,"text":"a condition that must be met to qualify"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D12","is_correct":false,"text":"a special case modifies the general rule"},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D13","is_correct":false,"text":"an officially updated sequence of actions"}],"word":"eligibility requirement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b023e1ee-17c9-506d-9757-b0db0607b3cc', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility.","explanation":"The missing expression in the recording is “eligibility requirement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"eligibility requirement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D14","is_correct":true},{"audio_text":"revised procedure","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D15","is_correct":false},{"audio_text":"comply with","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D16","is_correct":false}],"sentence_template":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc7fcfd1-763b-5f04-849b-a2f5e16fc2ab', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"eligibility requirement","explanation":"The recording uses “eligibility requirement” to convey the intended B2 meaning.","hint_prefix":"elig","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94a9a892-9ae6-5da4-8f91-9d8345b286ac', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"contingency arrangement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D17","text":"contingency arrangement"},{"audio_text":"subject to change","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D18","text":"subject to change"},{"audio_text":"eligibility requirement","id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D19","text":"eligibility requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ee952e1-3254-5e8f-8b32-a656dd0854e8', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing Urgent Announcements”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D20","is_correct":true,"text":"Until further notice, all participants must comply with the temporary safety guidance and retain confirmation of their eligibility."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_ANNOUNCEMENTS_PROCEDURES_AND_CONTINGENCIES_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3cfd28bd-0037-578e-8d9a-a909ad5e8204', 'f6487663-55fe-5705-8a6b-d5a49f42f396', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8679e6d0-fde6-5229-837f-abbe29cc76b5', 'en', 'contingency arrangement', 'резервная договорённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d22a12a5-2792-5d37-89f2-f8584ab757c1', 'en', 'subject to change', 'может быть изменено', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cacfb212-1677-515f-92a1-f4dbd9c4aab0', 'en', 'eligibility requirement', 'требование к участию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dff94004-a1fb-505b-a343-efd17ab0f032', 'en', 'exception applies', 'действует исключение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('022c845a-0efd-58da-9ae4-84ea3fa4606f', 'en', 'revised procedure', 'изменённая процедура', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e743b056-bf9c-53e0-aeee-cae0cece0c84', 'en', 'until further notice', 'до дальнейшего уведомления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8edd4a6-5ebd-50e2-b540-db74391ea303', 'en', 'comply with', 'соблюдать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8679e6d0-fde6-5229-837f-abbe29cc76b5', 'en', 'contingency arrangement', 'резервная договорённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d22a12a5-2792-5d37-89f2-f8584ab757c1', 'en', 'subject to change', 'может быть изменено', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cacfb212-1677-515f-92a1-f4dbd9c4aab0', 'en', 'eligibility requirement', 'требование к участию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dff94004-a1fb-505b-a343-efd17ab0f032', 'en', 'exception applies', 'действует исключение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('022c845a-0efd-58da-9ae4-84ea3fa4606f', 'en', 'revised procedure', 'изменённая процедура', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e743b056-bf9c-53e0-aeee-cae0cece0c84', 'en', 'until further notice', 'до дальнейшего уведомления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8edd4a6-5ebd-50e2-b540-db74391ea303', 'en', 'comply with', 'соблюдать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8679e6d0-fde6-5229-837f-abbe29cc76b5', 'en', 'contingency arrangement', 'резервная договорённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d22a12a5-2792-5d37-89f2-f8584ab757c1', 'en', 'subject to change', 'может быть изменено', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cacfb212-1677-515f-92a1-f4dbd9c4aab0', 'en', 'eligibility requirement', 'требование к участию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dff94004-a1fb-505b-a343-efd17ab0f032', 'en', 'exception applies', 'действует исключение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('022c845a-0efd-58da-9ae4-84ea3fa4606f', 'en', 'revised procedure', 'изменённая процедура', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e743b056-bf9c-53e0-aeee-cae0cece0c84', 'en', 'until further notice', 'до дальнейшего уведомления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8edd4a6-5ebd-50e2-b540-db74391ea303', 'en', 'comply with', 'соблюдать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '9ddd03f7-1c64-5519-a02c-43389cfe0017', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '9ddd03f7-1c64-5519-a02c-43389cfe0017', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject to change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '9ddd03f7-1c64-5519-a02c-43389cfe0017', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'eligibility requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '9ddd03f7-1c64-5519-a02c-43389cfe0017', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'exception applies' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '9ddd03f7-1c64-5519-a02c-43389cfe0017', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'revised procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '9ddd03f7-1c64-5519-a02c-43389cfe0017', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'until further notice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '9ddd03f7-1c64-5519-a02c-43389cfe0017', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'comply with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject to change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'eligibility requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'exception applies' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'revised procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'until further notice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, '471ff3fe-5e37-586a-8082-03d0d8bcb62e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'comply with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, 'f6487663-55fe-5705-8a6b-d5a49f42f396', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, 'f6487663-55fe-5705-8a6b-d5a49f42f396', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject to change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, 'f6487663-55fe-5705-8a6b-d5a49f42f396', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'eligibility requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, 'f6487663-55fe-5705-8a6b-d5a49f42f396', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'exception applies' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, 'f6487663-55fe-5705-8a6b-d5a49f42f396', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'revised procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, 'f6487663-55fe-5705-8a6b-d5a49f42f396', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'until further notice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3cfd28bd-0037-578e-8d9a-a909ad5e8204', id, 'f6487663-55fe-5705-8a6b-d5a49f42f396', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'comply with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
