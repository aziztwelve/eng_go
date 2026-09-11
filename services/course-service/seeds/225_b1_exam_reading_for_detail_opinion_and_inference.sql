-- Track: B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3d1b4390-1492-5bbc-b184-6af6ff5b4afc', 'B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE', 'Чтение: детали, мнение и выводы', 'Развивайте экзаменационные навыки уровня B1 по теме «Чтение: детали, мнение и выводы».', '{"en":"Reading for Detail, Opinion and Inference","ru":"Чтение: детали, мнение и выводы"}'::jsonb, '{"en":"Develop B1 exam skills for reading for detail, opinion and inference.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Чтение: детали, мнение и выводы»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8a0f5a0d-74a5-5012-b805-ccce6ad76964', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Locating Evidence","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d6a4b86-b35d-5e3b-b997-d1f9bae88e12', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E01","left":"inference","right":"вывод"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E02","left":"evidence","right":"доказательство"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E03","left":"attitude","right":"отношение"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E04","left":"claim","right":"утверждение"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E05","left":"imply","right":"подразумевать"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E06","left":"detail","right":"деталь"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E07","left":"bias","right":"предвзятость"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('226cc479-b396-57b2-9240-239383b349eb', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E08","is_correct":true,"text":"The writer does not state her attitude directly, but her choice of examples implies strong concern."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9be8a37f-3f2d-5a78-86e7-ba30ff471d54', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The writer does not state her attitude directly, but her choice of examples implies strong concern.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Автор не выражает своё отношение прямо, но выбор примеров подразумевает серьёзную обеспокоенность.","target_language":"en","word_bank":["The","writer","does","not","state","her","attitude","directly,","but","her","choice","of","examples","implies","strong","concern."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8eb86b37-a2e1-536c-9f49-13c3e865aca8', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"inference","instruction":"Выберите подходящее слово.","options":["inference","claim","detail"],"sentence_template":"The writer does not state her attitude directly, but her choice of examples implies strong concern."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec6eef35-4430-542c-a4b7-f81e0b5117d7', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","writer","does","not","state","her","attitude","directly,","but","her","choice","of","examples","implies","strong","concern."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["concern.","strong","implies","examples","of","choice","her","but","directly,","attitude","her","state","not","does","writer","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ef6a510-1372-56f8-9020-a78ea2bb85e4', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The writer does not state her attitude directly, but her choice of examples implies strong concern. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e86ecc0f-383f-5858-9b6d-471d361abcd7', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The writer does not state her attitude directly, but her choice of examples implies strong concern. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Автор не выражает своё отношение прямо, но выбор примеров подразумевает серьёзную обеспокоенность. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f9495c4-7bd1-5987-8957-847bf6b3e9f4', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"The writer does not state her attitude directly, but her choice of examples implies strong concern.","translation":"Автор не выражает своё отношение прямо, но выбор примеров подразумевает серьёзную обеспокоенность.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Locating Evidence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ee4404b-68a4-5ec9-b13f-4985399a1dd3', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“inference” means a conclusion based on indirect evidence.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E11","is_correct":true,"text":"a conclusion based on indirect evidence"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E12","is_correct":false,"text":"information supporting an idea"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E13","is_correct":false,"text":"a writer’s opinion or feeling"}],"word":"inference"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('867e05ad-c632-5f6b-8bc3-776d1c5d8bdc', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The writer does not state her attitude directly, but her choice of examples implies strong concern.","explanation":"The missing exam expression is “inference”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"inference","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E14","is_correct":true},{"audio_text":"attitude","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E15","is_correct":false},{"audio_text":"imply","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E16","is_correct":false}],"sentence_template":"The writer does not state her attitude directly, but her choice of examples implies strong concern."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1e761d6-40b9-5f8b-b4a2-73dcb640c0ba', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"inference","explanation":"The sentence requires “inference” to produce the correct B1 meaning.","hint_prefix":"inf","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The writer does not state her attitude directly, but her choice of examples implies strong concern."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b65bb38c-f18c-5bc8-8ba9-945cbe147c44', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"inference","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E17","text":"inference"},{"audio_text":"evidence","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E18","text":"evidence"},{"audio_text":"attitude","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E19","text":"attitude"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a93aec20-1489-53ca-9b42-88555bae0ac0', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Locating Evidence”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E20","is_correct":true,"text":"The writer does not state her attitude directly, but her choice of examples implies strong concern."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d1b4390-1492-5bbc-b184-6af6ff5b4afc', '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('65af2eaa-491c-54c8-b5e8-72f74542d103', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Recognising Opinion","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99ca1db1-1a86-541f-a487-2220f86745b0', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E01","left":"inference","right":"вывод"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E02","left":"evidence","right":"доказательство"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E03","left":"attitude","right":"отношение"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E04","left":"claim","right":"утверждение"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E05","left":"imply","right":"подразумевать"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E06","left":"detail","right":"деталь"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E07","left":"bias","right":"предвзятость"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac5ebcf8-e458-5e96-bc10-e50a762dc700', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E08","is_correct":true,"text":"The second paragraph provides evidence for the claim, whereas the final detail introduces a possible limitation."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07292581-4a31-5a8c-8746-98d2cd5c6e67', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The second paragraph provides evidence for the claim, whereas the final detail introduces a possible limitation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Второй абзац приводит доказательство утверждения, тогда как последняя деталь указывает на возможное ограничение.","target_language":"en","word_bank":["The","second","paragraph","provides","evidence","for","the","claim,","whereas","the","final","detail","introduces","a","possible","limitation."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88e53119-f125-584c-9085-2a39def55e2c', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"evidence","instruction":"Выберите подходящее слово.","options":["evidence","imply","bias"],"sentence_template":"The second paragraph provides ___ for the claim, whereas the final detail introduces a possible limitation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('664c3e69-6a9d-507b-93a2-73ec60706a17', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","second","paragraph","provides","evidence","for","the","claim,","whereas","the","final","detail","introduces","a","possible","limitation."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["limitation.","possible","a","introduces","detail","final","the","whereas","claim,","the","for","evidence","provides","paragraph","second","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fda8821-1603-5a31-bb5d-5a090779ce8d', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The second paragraph provides evidence for the claim, whereas the final detail introduces a possible limitation. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c66225a9-a98d-5c9d-a8f3-ca94369fc828', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The second paragraph provides evidence for the claim, whereas the final detail introduces a possible limitation. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Второй абзац приводит доказательство утверждения, тогда как последняя деталь указывает на возможное ограничение. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36b534c1-4c83-5962-8982-27497d874eee', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"The second paragraph provides evidence for the claim, whereas the final detail introduces a possible limitation.","translation":"Второй абзац приводит доказательство утверждения, тогда как последняя деталь указывает на возможное ограничение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Recognising Opinion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7261b04-0b09-5ee1-97ba-f8185a485cfa', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“evidence” means information supporting an idea.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E11","is_correct":true,"text":"information supporting an idea"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E12","is_correct":false,"text":"a writer’s opinion or feeling"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E13","is_correct":false,"text":"a statement presented as true"}],"word":"evidence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8a87024-3a6a-5890-bcf2-69174df79d75', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The second paragraph provides evidence for the claim, whereas the final detail introduces a possible limitation.","explanation":"The missing exam expression is “evidence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"evidence","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E14","is_correct":true},{"audio_text":"claim","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E15","is_correct":false},{"audio_text":"detail","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E16","is_correct":false}],"sentence_template":"The second paragraph provides ___ for the claim, whereas the final detail introduces a possible limitation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc74015b-5327-52b4-a5e8-65fedcb0d846', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"evidence","explanation":"The sentence requires “evidence” to produce the correct B1 meaning.","hint_prefix":"evi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The second paragraph provides ___ for the claim, whereas the final detail introduces a possible limitation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('063fafb3-299d-5454-8ae9-6beb3deb1fb8', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"inference","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E17","text":"inference"},{"audio_text":"evidence","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E18","text":"evidence"},{"audio_text":"attitude","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E19","text":"attitude"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c7ac5ea-0e19-5f91-aa31-4d25e33462d9', '65af2eaa-491c-54c8-b5e8-72f74542d103', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Recognising Opinion”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E20","is_correct":true,"text":"The second paragraph provides evidence for the claim, whereas the final detail introduces a possible limitation."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d1b4390-1492-5bbc-b184-6af6ff5b4afc', '65af2eaa-491c-54c8-b5e8-72f74542d103', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Making Simple Inferences","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cec147e-a55a-5984-b99a-7f39e0de182c', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E01","left":"inference","right":"вывод"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E02","left":"evidence","right":"доказательство"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E03","left":"attitude","right":"отношение"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E04","left":"claim","right":"утверждение"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E05","left":"imply","right":"подразумевать"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E06","left":"detail","right":"деталь"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E07","left":"bias","right":"предвзятость"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c50ad40-378f-54a4-af90-6f22035bb4b3', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E08","is_correct":true,"text":"Readers can infer that the source may be biased because it presents no evidence from the opposing side."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0c14670-d12c-5f51-9bfd-7b3990456956', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Readers can infer that the source may be biased because it presents no evidence from the opposing side.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Читатели могут сделать вывод, что источник предвзят, поскольку он не приводит доказательств противоположной стороны.","target_language":"en","word_bank":["Readers","can","infer","that","the","source","may","be","biased","because","it","presents","no","evidence","from","the","opposing","side."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b36a49d2-7dfe-5b02-9731-c7bd0676a4ad', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"attitude","instruction":"Выберите подходящее слово.","options":["attitude","detail","inference"],"sentence_template":"Readers can infer that the source may be biased because it presents no evidence from the opposing side."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67b5a8a7-94fd-53ea-b568-d68d304d0a93', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Readers","can","infer","that","the","source","may","be","biased","because","it","presents","no","evidence","from","the","opposing","side."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["side.","opposing","the","from","evidence","no","presents","it","because","biased","be","may","source","the","that","infer","can","Readers"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('863888d0-8b42-584b-82ba-965521da78bb', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Readers can infer that the source may be biased because it presents no evidence from the opposing side. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d533bd76-db61-59ac-8131-4e76c63b3250', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Readers can infer that the source may be biased because it presents no evidence from the opposing side. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Читатели могут сделать вывод, что источник предвзят, поскольку он не приводит доказательств противоположной стороны. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d75c4c7b-1dc0-5068-8624-2f8b0e96b1ea', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"Readers can infer that the source may be biased because it presents no evidence from the opposing side.","translation":"Читатели могут сделать вывод, что источник предвзят, поскольку он не приводит доказательств противоположной стороны.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Making Simple Inferences"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('105b8095-8655-5206-b450-3851e5f613aa', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“attitude” means a writer’s opinion or feeling.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E11","is_correct":true,"text":"a writer’s opinion or feeling"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E12","is_correct":false,"text":"a statement presented as true"},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E13","is_correct":false,"text":"suggest without stating directly"}],"word":"attitude"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6ac9b27-92a7-5dc9-8470-4758282f2023', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Readers can infer that the source may be biased because it presents no evidence from the opposing side.","explanation":"The missing exam expression is “attitude”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"attitude","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E14","is_correct":true},{"audio_text":"imply","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E15","is_correct":false},{"audio_text":"bias","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E16","is_correct":false}],"sentence_template":"Readers can infer that the source may be biased because it presents no evidence from the opposing side."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ef9655c-94eb-5a47-904b-f44c406f07aa', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"attitude","explanation":"The sentence requires “attitude” to produce the correct B1 meaning.","hint_prefix":"att","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Readers can infer that the source may be biased because it presents no evidence from the opposing side."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b63d2487-03e5-5201-a339-2315f1070ad0', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"inference","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E17","text":"inference"},{"audio_text":"evidence","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E18","text":"evidence"},{"audio_text":"attitude","id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E19","text":"attitude"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a2a7405-8739-579b-b212-a57c0be78192', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Making Simple Inferences”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E20","is_correct":true,"text":"Readers can infer that the source may be biased because it presents no evidence from the opposing side."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_READING_FOR_DETAIL_OPINION_AND_INFERENCE_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d1b4390-1492-5bbc-b184-6af6ff5b4afc', '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3095040d-3a00-5bba-955b-363979c522b1', 'en', 'inference', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f0b997e-23a4-5519-9dc1-4e4b8e48effb', 'en', 'claim', 'утверждение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f9e1234-5eec-562f-a5ce-93dcc3fcffd0', 'en', 'bias', 'предвзятость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3095040d-3a00-5bba-955b-363979c522b1', 'en', 'inference', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f0b997e-23a4-5519-9dc1-4e4b8e48effb', 'en', 'claim', 'утверждение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f9e1234-5eec-562f-a5ce-93dcc3fcffd0', 'en', 'bias', 'предвзятость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3095040d-3a00-5bba-955b-363979c522b1', 'en', 'inference', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f0b997e-23a4-5519-9dc1-4e4b8e48effb', 'en', 'claim', 'утверждение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f9e1234-5eec-562f-a5ce-93dcc3fcffd0', 'en', 'bias', 'предвзятость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'inference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '8a0f5a0d-74a5-5012-b805-ccce6ad76964', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '65af2eaa-491c-54c8-b5e8-72f74542d103', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'inference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '65af2eaa-491c-54c8-b5e8-72f74542d103', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '65af2eaa-491c-54c8-b5e8-72f74542d103', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '65af2eaa-491c-54c8-b5e8-72f74542d103', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '65af2eaa-491c-54c8-b5e8-72f74542d103', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '65af2eaa-491c-54c8-b5e8-72f74542d103', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '65af2eaa-491c-54c8-b5e8-72f74542d103', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'inference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d1b4390-1492-5bbc-b184-6af6ff5b4afc', id, '9bbf9f69-2bea-5245-a5ec-f5f8e2dacb11', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
