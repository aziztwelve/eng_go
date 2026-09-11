-- Track: B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0c736317-7aec-5dce-917e-d6c5d4ecea67', 'B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR', 'Удалённые звонки, уточнение и восстановление понимания', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Удалённые звонки, уточнение и восстановление понимания».', '{"en":"Remote Calls, Clarification and Repair","ru":"Удалённые звонки, уточнение и восстановление понимания"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for remote calls, clarification and repair.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Удалённые звонки, уточнение и восстановление понимания»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fb09db58-41c9-55c6-8014-cab85a999827', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Managing Audio Problems","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b685cb3a-d5c6-55cb-ad4d-80ccdc24fe24', 'fb09db58-41c9-55c6-8014-cab85a999827', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D01","left":"audio dropout","right":"пропадание звука"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D02","left":"talk over someone","right":"говорить одновременно с кем-либо"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D03","left":"rephrase","right":"переформулировать"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D04","left":"confirm understanding","right":"подтвердить понимание"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D05","left":"misinterpret","right":"неверно истолковать"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D06","left":"diplomatic correction","right":"тактичное исправление"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D07","left":"follow-up message","right":"последующее сообщение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cabdc702-948d-5f5c-be1d-65bc1e4bf8b9', 'fb09db58-41c9-55c6-8014-cab85a999827', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D08","is_correct":true,"text":"There was an audio dropout just as you mentioned the deadline, so could you repeat the date and confirm whether it is final?"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57b4cebf-f0b3-5f7e-ab91-eb074bf4ebb5', 'fb09db58-41c9-55c6-8014-cab85a999827', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"There was an audio dropout just as you mentioned the deadline, so could you repeat the date and confirm whether it is final?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Звук пропал как раз тогда, когда вы упомянули срок, поэтому не могли бы вы повторить дату и подтвердить, окончательная ли она?","target_language":"en","word_bank":["There","was","an","audio","dropout","just","as","you","mentioned","the","deadline",",","so","could","you","repeat","the","date","and","confirm","whether","it","is","final","?"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6837b6c-8b9e-5403-8aec-b183bf159edd', 'fb09db58-41c9-55c6-8014-cab85a999827', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"audio dropout","instruction":"Выберите подходящее слово.","options":["audio dropout","confirm understanding","diplomatic correction"],"sentence_template":"There was an ___ just as you mentioned the deadline, so could you repeat the date and confirm whether it is final?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9803d736-c4bd-5ce9-bfa1-5040b030fb32', 'fb09db58-41c9-55c6-8014-cab85a999827', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["There","was","an","audio","dropout","just","as","you","mentioned","the","deadline",",","so","could","you","repeat","the","date","and","confirm","whether","it","is","final","?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["?","final","is","it","whether","confirm","and","date","the","repeat","you","could","so",",","deadline","the","mentioned","you","as","just","dropout","audio","an","was","There"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e42be80c-b2fb-5559-b19e-bd0a8643ef94', 'fb09db58-41c9-55c6-8014-cab85a999827', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"There was an audio dropout just as you mentioned the deadline, so could you repeat the date and confirm whether it is final? Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a95e8da-fcb0-523a-b016-b8abf0bbd540', 'fb09db58-41c9-55c6-8014-cab85a999827', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"There was an audio dropout just as you mentioned the deadline, so could you repeat the date and confirm whether it is final? Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Звук пропал как раз тогда, когда вы упомянули срок, поэтому не могли бы вы повторить дату и подтвердить, окончательная ли она? Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bb8c1f6-eeea-5758-924f-686b0313df63', 'fb09db58-41c9-55c6-8014-cab85a999827', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"There was an audio dropout just as you mentioned the deadline, so could you repeat the date and confirm whether it is final?","translation":"Звук пропал как раз тогда, когда вы упомянули срок, поэтому не могли бы вы повторить дату и подтвердить, окончательная ли она?","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Managing Audio Problems"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79685e41-9807-5943-a356-150b10d5dab2', 'fb09db58-41c9-55c6-8014-cab85a999827', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“audio dropout” means a brief loss of sound during a call.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D11","is_correct":true,"text":"a brief loss of sound during a call"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D12","is_correct":false,"text":"speak while another person is still talking"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D13","is_correct":false,"text":"express the same idea in different words"}],"word":"audio dropout"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27421d8c-585e-57c2-b459-86356a4c2faa', 'fb09db58-41c9-55c6-8014-cab85a999827', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"There was an audio dropout just as you mentioned the deadline, so could you repeat the date and confirm whether it is final?","explanation":"The missing expression in the recording is “audio dropout”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"audio dropout","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D14","is_correct":true},{"audio_text":"rephrase","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D15","is_correct":false},{"audio_text":"misinterpret","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D16","is_correct":false}],"sentence_template":"There was an ___ just as you mentioned the deadline, so could you repeat the date and confirm whether it is final?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa653465-78f8-5be2-a476-240076a0c58f', 'fb09db58-41c9-55c6-8014-cab85a999827', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"audio dropout","explanation":"The recording uses “audio dropout” to convey the intended B2 meaning.","hint_prefix":"audi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"There was an ___ just as you mentioned the deadline, so could you repeat the date and confirm whether it is final?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6251ba1b-9769-51d8-9380-ad511b8b6a5d', 'fb09db58-41c9-55c6-8014-cab85a999827', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"audio dropout","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D17","text":"audio dropout"},{"audio_text":"talk over someone","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D18","text":"talk over someone"},{"audio_text":"rephrase","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D19","text":"rephrase"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fbf69ed-6a74-52f5-bddd-21f23142940c', 'fb09db58-41c9-55c6-8014-cab85a999827', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Managing Audio Problems”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D20","is_correct":true,"text":"There was an audio dropout just as you mentioned the deadline, so could you repeat the date and confirm whether it is final?"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0c736317-7aec-5dce-917e-d6c5d4ecea67', 'fb09db58-41c9-55c6-8014-cab85a999827', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('73323826-f9a7-59e0-9cd0-b5618f7791df', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Repairing Misunderstandings","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50cc750e-2d5b-528b-83cd-b7a2a4975df7', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D01","left":"audio dropout","right":"пропадание звука"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D02","left":"talk over someone","right":"говорить одновременно с кем-либо"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D03","left":"rephrase","right":"переформулировать"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D04","left":"confirm understanding","right":"подтвердить понимание"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D05","left":"misinterpret","right":"неверно истолковать"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D06","left":"diplomatic correction","right":"тактичное исправление"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D07","left":"follow-up message","right":"последующее сообщение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('074eee0f-4425-550c-ae76-253ea087d46c', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D08","is_correct":true,"text":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c229f34e-4c14-5657-91fb-fe43203c0484', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Возможно, я неверно истолковал вашу мысль; позвольте мне переформулировать услышанное, чтобы мы могли подтвердить понимание.","target_language":"en","word_bank":["I","may","have","misinterpreted","your","point",";","let","me","rephrase","what","I","heard","so","that","we","can","confirm","our","understanding","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37371296-68d6-572f-84aa-c7c5aa271361', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"talk over someone","instruction":"Выберите подходящее слово.","options":["talk over someone","misinterpret","follow-up message"],"sentence_template":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b709cbed-13df-5d80-93bc-7ef31f27f477', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","may","have","misinterpreted","your","point",";","let","me","rephrase","what","I","heard","so","that","we","can","confirm","our","understanding","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","understanding","our","confirm","can","we","that","so","heard","I","what","rephrase","me","let",";","point","your","misinterpreted","have","may","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a740504-1494-5175-9c7f-85d2c1bfd06d', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcb79ab1-00e9-5060-b4ac-818f0c12e012', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Возможно, я неверно истолковал вашу мысль; позвольте мне переформулировать услышанное, чтобы мы могли подтвердить понимание. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afc1d7ef-187c-57a6-9baa-fbb11c90f0d8', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding.","translation":"Возможно, я неверно истолковал вашу мысль; позвольте мне переформулировать услышанное, чтобы мы могли подтвердить понимание.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Repairing Misunderstandings"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51cfdc73-e277-5d9a-b36d-e9cccf0687e9', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“talk over someone” means speak while another person is still talking.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D11","is_correct":true,"text":"speak while another person is still talking"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D12","is_correct":false,"text":"express the same idea in different words"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D13","is_correct":false,"text":"check that a message was interpreted correctly"}],"word":"talk over someone"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d0bccb1-62d5-5047-b25b-b7440b3de781', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding.","explanation":"The missing expression in the recording is “talk over someone”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"talk over someone","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D14","is_correct":true},{"audio_text":"confirm understanding","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D15","is_correct":false},{"audio_text":"diplomatic correction","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D16","is_correct":false}],"sentence_template":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d250b3fa-93ae-56da-bfff-64d0e2cb2210', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"talk over someone","explanation":"The recording uses “talk over someone” to convey the intended B2 meaning.","hint_prefix":"talk","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d146f024-5439-5ac1-9712-7ddc7ea3c5b4', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"audio dropout","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D17","text":"audio dropout"},{"audio_text":"talk over someone","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D18","text":"talk over someone"},{"audio_text":"rephrase","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D19","text":"rephrase"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb58ab91-e822-569f-991d-02c0313d8554', '73323826-f9a7-59e0-9cd0-b5618f7791df', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Repairing Misunderstandings”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D20","is_correct":true,"text":"I may have misinterpreted your point; let me rephrase what I heard so that we can confirm our understanding."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0c736317-7aec-5dce-917e-d6c5d4ecea67', '73323826-f9a7-59e0-9cd0-b5618f7791df', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7305d25a-d89e-5b45-b920-49e7b722cad4', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing Diplomatic Clarification","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc67d436-f34c-5b5c-8016-19d1bd45cc8a', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D01","left":"audio dropout","right":"пропадание звука"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D02","left":"talk over someone","right":"говорить одновременно с кем-либо"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D03","left":"rephrase","right":"переформулировать"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D04","left":"confirm understanding","right":"подтвердить понимание"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D05","left":"misinterpret","right":"неверно истолковать"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D06","left":"diplomatic correction","right":"тактичное исправление"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D07","left":"follow-up message","right":"последующее сообщение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b08d279b-612e-54a9-ab67-b30f63e9f36c', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D08","is_correct":true,"text":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa0ad67e-01f3-53b3-ade0-0c6503597a5d', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Тактичное исправление устранило путаницу, а последующее сообщение письменно зафиксировало пересмотренные обязанности.","target_language":"en","word_bank":["The","diplomatic","correction","resolved","the","confusion",",","and","a","follow-up","message","recorded","the","revised","responsibilities","in","writing","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7efceed-bc49-5a5b-bd6f-a6b19b23f62b', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"rephrase","instruction":"Выберите подходящее слово.","options":["rephrase","diplomatic correction","audio dropout"],"sentence_template":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88ec482f-b837-549a-a469-fbe7531da3a3', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","diplomatic","correction","resolved","the","confusion",",","and","a","follow-up","message","recorded","the","revised","responsibilities","in","writing","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","writing","in","responsibilities","revised","the","recorded","message","follow-up","a","and",",","confusion","the","resolved","correction","diplomatic","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee106d4a-3adb-58f7-9add-72cb74e92925', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c49e5bd-0e80-52bd-8014-753c417b122a', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Тактичное исправление устранило путаницу, а последующее сообщение письменно зафиксировало пересмотренные обязанности. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ccb8852-181e-5b00-aecc-10a8cea28d15', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing.","translation":"Тактичное исправление устранило путаницу, а последующее сообщение письменно зафиксировало пересмотренные обязанности.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing Diplomatic Clarification"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6187c335-98c7-59f3-b897-cbf46816d0fd', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“rephrase” means express the same idea in different words.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D11","is_correct":true,"text":"express the same idea in different words"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D12","is_correct":false,"text":"check that a message was interpreted correctly"},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D13","is_correct":false,"text":"understand something in the wrong way"}],"word":"rephrase"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41c02800-f1e2-53b8-b320-bed6adc1063a', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing.","explanation":"The missing expression in the recording is “rephrase”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"rephrase","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D14","is_correct":true},{"audio_text":"misinterpret","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D15","is_correct":false},{"audio_text":"follow-up message","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D16","is_correct":false}],"sentence_template":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c10ee842-9d30-5993-8d7f-1ea3fdf86326', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"rephrase","explanation":"The recording uses “rephrase” to convey the intended B2 meaning.","hint_prefix":"reph","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e87ffa06-237c-5578-85cc-324c7078aa4a', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"audio dropout","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D17","text":"audio dropout"},{"audio_text":"talk over someone","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D18","text":"talk over someone"},{"audio_text":"rephrase","id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D19","text":"rephrase"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('593ba0c5-6057-514b-a76a-8bc6b95a55bf', '7305d25a-d89e-5b45-b920-49e7b722cad4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing Diplomatic Clarification”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D20","is_correct":true,"text":"The diplomatic correction resolved the confusion, and a follow-up message recorded the revised responsibilities in writing."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_REMOTE_CALLS_CLARIFICATION_AND_REPAIR_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0c736317-7aec-5dce-917e-d6c5d4ecea67', '7305d25a-d89e-5b45-b920-49e7b722cad4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af671851-bf21-5f80-bdb5-cb689727782b', 'en', 'audio dropout', 'пропадание звука', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea951d0d-36c9-53f6-958a-17e548ad7694', 'en', 'talk over someone', 'говорить одновременно с кем-либо', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c78036a-4e6f-524e-ae0f-baf73f123ef6', 'en', 'rephrase', 'переформулировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02ec38d2-aeac-5ed9-8a10-3344d4fd0978', 'en', 'confirm understanding', 'подтвердить понимание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c37375e-22d8-571e-be05-ff009a2f9856', 'en', 'misinterpret', 'неверно истолковать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b2dd1ab-0761-5355-bd91-716513082149', 'en', 'diplomatic correction', 'тактичное исправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd30a92-feb5-5e9a-9ddc-a829cbfd54ea', 'en', 'follow-up message', 'последующее сообщение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af671851-bf21-5f80-bdb5-cb689727782b', 'en', 'audio dropout', 'пропадание звука', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea951d0d-36c9-53f6-958a-17e548ad7694', 'en', 'talk over someone', 'говорить одновременно с кем-либо', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c78036a-4e6f-524e-ae0f-baf73f123ef6', 'en', 'rephrase', 'переформулировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02ec38d2-aeac-5ed9-8a10-3344d4fd0978', 'en', 'confirm understanding', 'подтвердить понимание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c37375e-22d8-571e-be05-ff009a2f9856', 'en', 'misinterpret', 'неверно истолковать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b2dd1ab-0761-5355-bd91-716513082149', 'en', 'diplomatic correction', 'тактичное исправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd30a92-feb5-5e9a-9ddc-a829cbfd54ea', 'en', 'follow-up message', 'последующее сообщение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af671851-bf21-5f80-bdb5-cb689727782b', 'en', 'audio dropout', 'пропадание звука', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea951d0d-36c9-53f6-958a-17e548ad7694', 'en', 'talk over someone', 'говорить одновременно с кем-либо', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c78036a-4e6f-524e-ae0f-baf73f123ef6', 'en', 'rephrase', 'переформулировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02ec38d2-aeac-5ed9-8a10-3344d4fd0978', 'en', 'confirm understanding', 'подтвердить понимание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c37375e-22d8-571e-be05-ff009a2f9856', 'en', 'misinterpret', 'неверно истолковать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b2dd1ab-0761-5355-bd91-716513082149', 'en', 'diplomatic correction', 'тактичное исправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd30a92-feb5-5e9a-9ddc-a829cbfd54ea', 'en', 'follow-up message', 'последующее сообщение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, 'fb09db58-41c9-55c6-8014-cab85a999827', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'audio dropout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, 'fb09db58-41c9-55c6-8014-cab85a999827', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'talk over someone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, 'fb09db58-41c9-55c6-8014-cab85a999827', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'rephrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, 'fb09db58-41c9-55c6-8014-cab85a999827', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm understanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, 'fb09db58-41c9-55c6-8014-cab85a999827', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'misinterpret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, 'fb09db58-41c9-55c6-8014-cab85a999827', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, 'fb09db58-41c9-55c6-8014-cab85a999827', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '73323826-f9a7-59e0-9cd0-b5618f7791df', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'audio dropout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '73323826-f9a7-59e0-9cd0-b5618f7791df', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'talk over someone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '73323826-f9a7-59e0-9cd0-b5618f7791df', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'rephrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '73323826-f9a7-59e0-9cd0-b5618f7791df', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm understanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '73323826-f9a7-59e0-9cd0-b5618f7791df', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'misinterpret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '73323826-f9a7-59e0-9cd0-b5618f7791df', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '73323826-f9a7-59e0-9cd0-b5618f7791df', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '7305d25a-d89e-5b45-b920-49e7b722cad4', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'audio dropout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '7305d25a-d89e-5b45-b920-49e7b722cad4', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'talk over someone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '7305d25a-d89e-5b45-b920-49e7b722cad4', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'rephrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '7305d25a-d89e-5b45-b920-49e7b722cad4', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm understanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '7305d25a-d89e-5b45-b920-49e7b722cad4', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'misinterpret' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '7305d25a-d89e-5b45-b920-49e7b722cad4', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0c736317-7aec-5dce-917e-d6c5d4ecea67', id, '7305d25a-d89e-5b45-b920-49e7b722cad4', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
