-- Track: B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('092de5b6-9ff0-52b8-9111-ad8511ea1428', 'B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION', 'Развёрнутые ответы и устное взаимодействие', 'Развивайте экзаменационные навыки уровня B1 по теме «Развёрнутые ответы и устное взаимодействие».', '{"en":"Speaking Long Turns and Interaction","ru":"Развёрнутые ответы и устное взаимодействие"}'::jsonb, '{"en":"Develop B1 exam skills for speaking long turns and interaction.","ru":"Развивайте экзаменационные навыки уровня B1 по теме «Развёрнутые ответы и устное взаимодействие»."}'::jsonb, 'en', 'B1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f75f71d7-5c6c-50cc-b99f-304068646752', NULL, 'Анализ формы и значения', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Developing a Long Answer","ru":"Анализ формы и значения"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0cdf112-3acc-5449-bbad-bc7bc380924e', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E01","left":"develop an answer","right":"развить ответ"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E02","left":"compare","right":"сравнивать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E03","left":"speculate","right":"предполагать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E04","left":"justify","right":"обосновывать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E05","left":"respond","right":"реагировать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E06","left":"example","right":"пример"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E07","left":"conclusion","right":"вывод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4ff0be8-16af-5be8-84c0-9bb3e1c03130', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E08","is_correct":true,"text":"To develop an answer, describe the situation, explain your opinion and add a relevant example."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc888ec4-a316-50d0-9d10-8c32b1a34e66', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To develop an answer, describe the situation, explain your opinion and add a relevant example.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы развить ответ, опишите ситуацию, объясните своё мнение и добавьте уместный пример.","target_language":"en","word_bank":["To","develop","an","answer,","describe","the","situation,","explain","your","opinion","and","add","a","relevant","example."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98e0993e-8c40-51cf-8ba9-60b1b77d6add', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"develop an answer","instruction":"Выберите подходящее слово.","options":["develop an answer","justify","example"],"sentence_template":"To ___, describe the situation, explain your opinion and add a relevant example."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47c040fa-6114-517a-8fc1-fe9d63d4986b', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","develop","an","answer,","describe","the","situation,","explain","your","opinion","and","add","a","relevant","example."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["example.","relevant","a","add","and","opinion","your","explain","situation,","the","describe","answer,","an","develop","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6672e03c-ee34-5ab5-8793-cfa4aebacf54', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To develop an answer, describe the situation, explain your opinion and add a relevant example. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7b377a0-8449-5650-ab48-f954fe8e8d90', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To develop an answer, describe the situation, explain your opinion and add a relevant example. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Чтобы развить ответ, опишите ситуацию, объясните своё мнение и добавьте уместный пример. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3b47c16-8c0c-5145-87d2-f284910f5207', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"To develop an answer, describe the situation, explain your opinion and add a relevant example.","translation":"Чтобы развить ответ, опишите ситуацию, объясните своё мнение и добавьте уместный пример.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Developing a Long Answer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f1b7e96-7689-515b-970d-0c3d295ad7aa', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“develop an answer” means add explanation and detail.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E11","is_correct":true,"text":"add explanation and detail"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E12","is_correct":false,"text":"examine similarities and differences"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E13","is_correct":false,"text":"suggest possibilities without certainty"}],"word":"develop an answer"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b96fc11b-6524-51fd-9f88-b7ac8316d77a', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To develop an answer, describe the situation, explain your opinion and add a relevant example.","explanation":"The missing exam expression is “develop an answer”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"develop an answer","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E14","is_correct":true},{"audio_text":"speculate","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E15","is_correct":false},{"audio_text":"respond","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E16","is_correct":false}],"sentence_template":"To ___, describe the situation, explain your opinion and add a relevant example."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0921f482-2a73-5515-9547-89c479591386', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"develop an answer","explanation":"The sentence requires “develop an answer” to produce the correct B1 meaning.","hint_prefix":"dev","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To ___, describe the situation, explain your opinion and add a relevant example."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fb7007b-115b-55dd-b8fb-c2b09af30c53', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"develop an answer","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E17","text":"develop an answer"},{"audio_text":"compare","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E18","text":"compare"},{"audio_text":"speculate","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E19","text":"speculate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66729894-141a-53f0-bd52-5a82a9bed98b', 'f75f71d7-5c6c-50cc-b99f-304068646752', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Developing a Long Answer”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E20","is_correct":true,"text":"To develop an answer, describe the situation, explain your opinion and add a relevant example."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L1_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('092de5b6-9ff0-52b8-9111-ad8511ea1428', 'f75f71d7-5c6c-50cc-b99f-304068646752', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fc91be00-e240-5589-a0eb-46fbf83f7bd0', NULL, 'Применение в контексте', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Comparing and Speculating","ru":"Применение в контексте"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5e0d248-fff1-53fa-bb02-9d3573c4814a', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E01","left":"develop an answer","right":"развить ответ"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E02","left":"compare","right":"сравнивать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E03","left":"speculate","right":"предполагать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E04","left":"justify","right":"обосновывать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E05","left":"respond","right":"реагировать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E06","left":"example","right":"пример"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E07","left":"conclusion","right":"вывод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05699d03-0b4c-58e9-b297-96af7e385a8f', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E08","is_correct":true,"text":"When comparing the pictures, candidates can speculate about what the people might be feeling."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6631c325-0b35-5c93-a0da-f90147693623', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When comparing the pictures, candidates can speculate about what the people might be feeling.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сравнивая фотографии, кандидаты могут предположить, что чувствуют люди.","target_language":"en","word_bank":["When","comparing","the","pictures,","candidates","can","speculate","about","what","the","people","might","be","feeling."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24e55c9a-cb09-564d-a683-e97362c3d30f', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"compare","instruction":"Выберите подходящее слово.","options":["compare","respond","conclusion"],"sentence_template":"When comparing the pictures, candidates can speculate about what the people might be feeling."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42e5f4d6-9184-5071-be37-c9f803755813', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","comparing","the","pictures,","candidates","can","speculate","about","what","the","people","might","be","feeling."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["feeling.","be","might","people","the","what","about","speculate","can","candidates","pictures,","the","comparing","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('faebda02-b48a-5762-ae37-fa5789f2db17', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When comparing the pictures, candidates can speculate about what the people might be feeling. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21a5b7cb-1410-5fd3-9ee1-e709bc16455f', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When comparing the pictures, candidates can speculate about what the people might be feeling. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Сравнивая фотографии, кандидаты могут предположить, что чувствуют люди. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01510e5c-8875-5670-8140-b1137efe6a50', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"When comparing the pictures, candidates can speculate about what the people might be feeling.","translation":"Сравнивая фотографии, кандидаты могут предположить, что чувствуют люди.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Comparing and Speculating"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f04fa7b4-c6b1-552f-a418-c43a03e93ef9', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“compare” means examine similarities and differences.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E11","is_correct":true,"text":"examine similarities and differences"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E12","is_correct":false,"text":"suggest possibilities without certainty"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E13","is_correct":false,"text":"provide reasons for a view"}],"word":"compare"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('774e803b-9b07-5916-935b-46b70a06b8c4', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When comparing the pictures, candidates can speculate about what the people might be feeling.","explanation":"The missing exam expression is “compare”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"compare","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E14","is_correct":true},{"audio_text":"justify","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E15","is_correct":false},{"audio_text":"example","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E16","is_correct":false}],"sentence_template":"When comparing the pictures, candidates can speculate about what the people might be feeling."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce227577-d4a6-5685-9d46-710157141f07', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"compare","explanation":"The sentence requires “compare” to produce the correct B1 meaning.","hint_prefix":"com","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When comparing the pictures, candidates can speculate about what the people might be feeling."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3183087f-06b0-5892-8cda-60fcee74f64e', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"develop an answer","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E17","text":"develop an answer"},{"audio_text":"compare","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E18","text":"compare"},{"audio_text":"speculate","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E19","text":"speculate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fdf2f67-663f-5f75-8bc0-ceb7366f1155', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Comparing and Speculating”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E20","is_correct":true,"text":"When comparing the pictures, candidates can speculate about what the people might be feeling."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L2_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('092de5b6-9ff0-52b8-9111-ad8511ea1428', 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8dd6b9cf-c751-5155-9231-745a29140537', NULL, 'Экзаменационная практика', 'Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте.', '{"en":"Interactive Discussion","ru":"Экзаменационная практика"}'::jsonb, '{"en":"Apply B1 skills to analyse grammar, structure, attitude, and evidence in an exam context.","ru":"Применять навыки уровня B1 для анализа грамматики, структуры, отношения и доказательств в экзаменационном контексте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92a190ec-e328-5fca-86e6-7380221b4178', '8dd6b9cf-c751-5155-9231-745a29140537', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E01","left":"develop an answer","right":"развить ответ"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E02","left":"compare","right":"сравнивать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E03","left":"speculate","right":"предполагать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E04","left":"justify","right":"обосновывать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E05","left":"respond","right":"реагировать"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E06","left":"example","right":"пример"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E07","left":"conclusion","right":"вывод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b28a7b6c-b380-556c-8430-8a6e8fa55ac8', '8dd6b9cf-c751-5155-9231-745a29140537', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer fits the B1 grammar, meaning, and communicative context.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E08","is_correct":true,"text":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E09","is_correct":false,"text":"The context supports a completely opposite meaning."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E10","is_correct":false,"text":"No grammatical or contextual evidence is needed."}],"question":"Which option is best supported by the language and context?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c474e4d-b112-5dbf-8d1f-02135b45787a', '8dd6b9cf-c751-5155-9231-745a29140537', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сильный ответ в обсуждении учитывает другую точку зрения, обосновывает позицию и приходит к ясному выводу.","target_language":"en","word_bank":["A","strong","discussion","response","acknowledges","another","view,","justifies","a","position","and","reaches","a","clear","conclusion."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38698837-639c-592a-a3de-8a6c3b81766e', '8dd6b9cf-c751-5155-9231-745a29140537', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"speculate","instruction":"Выберите подходящее слово.","options":["speculate","example","develop an answer"],"sentence_template":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('111bbd87-3695-5a3d-ae4b-f8b1210412f7', '8dd6b9cf-c751-5155-9231-745a29140537', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","strong","discussion","response","acknowledges","another","view,","justifies","a","position","and","reaches","a","clear","conclusion."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["conclusion.","clear","a","reaches","and","position","a","justifies","view,","another","acknowledges","response","discussion","strong","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d380a998-662c-59e9-920e-f5bbd3dd22af', '8dd6b9cf-c751-5155-9231-745a29140537', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion. A careful candidate uses the surrounding context to confirm the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89907d62-58f9-59d4-a5f4-807ddcdb69f5', '8dd6b9cf-c751-5155-9231-745a29140537', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion. A careful candidate uses the surrounding context to confirm the intended meaning. Listen for contrast, tense and sentence stress, then repeat the full response accurately.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Сильный ответ в обсуждении учитывает другую точку зрения, обосновывает позицию и приходит к ясному выводу. Внимательный кандидат использует окружающий контекст, чтобы подтвердить предполагаемое значение. Слушайте противопоставление, время и фразовое ударение, затем точно повторите полный ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d981047-8365-5d07-a35c-0aa12d095423', '8dd6b9cf-c751-5155-9231-745a29140537', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Which evidence supports your answer?","translation":"Какое доказательство подтверждает ваш ответ?","type":"dialogue"},{"character":"Candidate","text":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion.","translation":"Сильный ответ в обсуждении учитывает другую точку зрения, обосновывает позицию и приходит к ясному выводу.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Explain how the language or context supports the selected answer."},{"is_correct":false,"text":"Choose another answer without considering any evidence."}],"text":"What should the candidate do next?","type":"choice"}],"title":"Interactive Discussion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05635abd-331a-5422-a74d-621c947cf29f', '8dd6b9cf-c751-5155-9231-745a29140537', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“speculate” means suggest possibilities without certainty.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E11","is_correct":true,"text":"suggest possibilities without certainty"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E12","is_correct":false,"text":"provide reasons for a view"},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E13","is_correct":false,"text":"answer another speaker"}],"word":"speculate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('569b1c56-8973-5ac6-b586-f9e585d15673', '8dd6b9cf-c751-5155-9231-745a29140537', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion.","explanation":"The missing exam expression is “speculate”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"speculate","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E14","is_correct":true},{"audio_text":"respond","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E15","is_correct":false},{"audio_text":"conclusion","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E16","is_correct":false}],"sentence_template":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e0eb993-2d72-5c9b-ba0c-30061aed1d3c', '8dd6b9cf-c751-5155-9231-745a29140537', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"speculate","explanation":"The sentence requires “speculate” to produce the correct B1 meaning.","hint_prefix":"spe","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('892b0737-5a86-51a5-b23d-fb09993b6c44', '8dd6b9cf-c751-5155-9231-745a29140537', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"develop an answer","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E17","text":"develop an answer"},{"audio_text":"compare","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E18","text":"compare"},{"audio_text":"speculate","id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E19","text":"speculate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad3927c8-4c45-5bd9-bb05-c30e71ce3e01', '8dd6b9cf-c751-5155-9231-745a29140537', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you answer this task on “Interactive Discussion”?"}],"explanation":"The correct response applies B1 language accurately and is supported by the task context.","instruction":"Ответьте.","options":[{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E20","is_correct":true,"text":"A strong discussion response acknowledges another view, justifies a position and reaches a clear conclusion."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E21","is_correct":false,"text":"I would ignore the instructions and choose without evidence."},{"id":"B1_EXAM_SPEAKING_LONG_TURNS_AND_INTERACTION_L3_E22","is_correct":false,"text":"The response does not relate to the examination task."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('092de5b6-9ff0-52b8-9111-ad8511ea1428', '8dd6b9cf-c751-5155-9231-745a29140537', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('103ac061-43f1-5d3a-9412-9faff07bac5b', 'en', 'develop an answer', 'развить ответ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7af6ba14-f494-5027-a29c-0e8921afae11', 'en', 'compare', 'сравнивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b25932a3-be06-5faa-90f4-21c6bd517ce1', 'en', 'speculate', 'предполагать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76d94aed-8662-5403-95bd-3046586b057a', 'en', 'justify', 'обосновывать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('007ad6da-bd33-586c-ad7e-bf50c7a0ecbb', 'en', 'respond', 'реагировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d98a7d9c-98de-50fb-8bd2-ed40c53a9f42', 'en', 'example', 'пример', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594e7ca9-6f79-54bc-882c-15fe40bf8708', 'en', 'conclusion', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('103ac061-43f1-5d3a-9412-9faff07bac5b', 'en', 'develop an answer', 'развить ответ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7af6ba14-f494-5027-a29c-0e8921afae11', 'en', 'compare', 'сравнивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b25932a3-be06-5faa-90f4-21c6bd517ce1', 'en', 'speculate', 'предполагать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76d94aed-8662-5403-95bd-3046586b057a', 'en', 'justify', 'обосновывать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('007ad6da-bd33-586c-ad7e-bf50c7a0ecbb', 'en', 'respond', 'реагировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d98a7d9c-98de-50fb-8bd2-ed40c53a9f42', 'en', 'example', 'пример', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594e7ca9-6f79-54bc-882c-15fe40bf8708', 'en', 'conclusion', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('103ac061-43f1-5d3a-9412-9faff07bac5b', 'en', 'develop an answer', 'развить ответ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7af6ba14-f494-5027-a29c-0e8921afae11', 'en', 'compare', 'сравнивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b25932a3-be06-5faa-90f4-21c6bd517ce1', 'en', 'speculate', 'предполагать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76d94aed-8662-5403-95bd-3046586b057a', 'en', 'justify', 'обосновывать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('007ad6da-bd33-586c-ad7e-bf50c7a0ecbb', 'en', 'respond', 'реагировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d98a7d9c-98de-50fb-8bd2-ed40c53a9f42', 'en', 'example', 'пример', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594e7ca9-6f79-54bc-882c-15fe40bf8708', 'en', 'conclusion', 'вывод', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'f75f71d7-5c6c-50cc-b99f-304068646752', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop an answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'f75f71d7-5c6c-50cc-b99f-304068646752', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'compare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'f75f71d7-5c6c-50cc-b99f-304068646752', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'f75f71d7-5c6c-50cc-b99f-304068646752', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'justify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'f75f71d7-5c6c-50cc-b99f-304068646752', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'f75f71d7-5c6c-50cc-b99f-304068646752', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'f75f71d7-5c6c-50cc-b99f-304068646752', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop an answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'compare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'justify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, 'fc91be00-e240-5589-a0eb-46fbf83f7bd0', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, '8dd6b9cf-c751-5155-9231-745a29140537', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop an answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, '8dd6b9cf-c751-5155-9231-745a29140537', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'compare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, '8dd6b9cf-c751-5155-9231-745a29140537', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, '8dd6b9cf-c751-5155-9231-745a29140537', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'justify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, '8dd6b9cf-c751-5155-9231-745a29140537', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, '8dd6b9cf-c751-5155-9231-745a29140537', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '092de5b6-9ff0-52b8-9111-ad8511ea1428', id, '8dd6b9cf-c751-5155-9231-745a29140537', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
