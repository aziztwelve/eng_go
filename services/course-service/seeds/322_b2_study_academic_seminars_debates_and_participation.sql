-- Track: B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c2d83d8d-e720-55a4-9855-6bc291ec325e', 'B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION', 'Академические семинары, дебаты и участие', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Академические семинары, дебаты и участие»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Academic Seminars, Debates and Participation","ru":"Академические семинары, дебаты и участие"}'::jsonb, '{"en":"Develop independent B2 academic skills for academic seminars, debates and participation by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Академические семинары, дебаты и участие»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e67f3c6e-2d29-5ef7-8f17-a33e592af1db', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Developing a Seminar Point","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7db7b674-b982-57f2-8d38-85ad9353312e', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D01","left":"substantiate a claim","right":"обосновать утверждение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D02","left":"constructive challenge","right":"конструктивное возражение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D03","left":"build on a point","right":"развить мысль"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D04","left":"seek clarification","right":"запросить уточнение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D05","left":"counterexample","right":"контрпример"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D06","left":"moderate a discussion","right":"модерировать обсуждение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D07","left":"synthesise viewpoints","right":"обобщить точки зрения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77b7dc38-55c3-5da6-ac5f-24c64d9a1b1f', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D08","is_correct":true,"text":"To substantiate a claim in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a71e8e1d-52f7-554f-a033-3d14c1e245f1', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To substantiate a claim in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы обосновать утверждение на семинаре, выступающий должен явно связать соответствующие доказательства с предлагаемым выводом.","target_language":"en","word_bank":["To","substantiate","a","claim","in","a","seminar",",","a","speaker","should","connect","relevant","evidence","explicitly","to","the","conclusion","being","proposed","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('554b9252-a467-519d-ab2a-3bb8a0b2c1c1', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"substantiate a claim","instruction":"Выберите подходящее слово.","options":["substantiate a claim","seek clarification","moderate a discussion"],"sentence_template":"To ___ in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42f2a637-fefe-503c-9899-2965931d4a4d', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","substantiate","a","claim","in","a","seminar",",","a","speaker","should","connect","relevant","evidence","explicitly","to","the","conclusion","being","proposed","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","proposed","being","conclusion","the","to","explicitly","evidence","relevant","connect","should","speaker","a",",","seminar","a","in","claim","a","substantiate","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('275dc53b-f856-53e3-8a55-260c07761660', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To substantiate a claim in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5d1afed-0915-5fb2-b528-14f065df2769', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To substantiate a claim in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чтобы обосновать утверждение на семинаре, выступающий должен явно связать соответствующие доказательства с предлагаемым выводом. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d0665e7-f750-583f-b2e5-bcc33ca565ab', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"To substantiate a claim in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed.","translation":"Чтобы обосновать утверждение на семинаре, выступающий должен явно связать соответствующие доказательства с предлагаемым выводом.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Developing a Seminar Point"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01a00038-c8a0-5e84-94cf-cfa9217a3bb5', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“substantiate a claim” means support a statement with evidence or reasoning.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D11","is_correct":true,"text":"support a statement with evidence or reasoning"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D12","is_correct":false,"text":"respectful criticism intended to improve an idea"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D13","is_correct":false,"text":"extend another speaker’s contribution"}],"word":"substantiate a claim"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c6731dc-4ab1-52c1-9c08-81d9fc16510a', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To substantiate a claim in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed.","explanation":"The missing academic expression is “substantiate a claim”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"substantiate a claim","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D14","is_correct":true},{"audio_text":"build on a point","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D15","is_correct":false},{"audio_text":"counterexample","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D16","is_correct":false}],"sentence_template":"To ___ in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c6c6b47-d846-5122-b344-6cfe2f87788b', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"substantiate a claim","explanation":"The complete academic statement uses “substantiate a claim” precisely.","hint_prefix":"subs","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To ___ in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('999f3f54-ff6d-5a85-b492-3f2955ae9c1b', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"substantiate a claim","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D17","text":"substantiate a claim"},{"audio_text":"constructive challenge","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D18","text":"constructive challenge"},{"audio_text":"build on a point","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D19","text":"build on a point"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c69615c2-0cef-5747-be07-520cc43b07b9', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Developing a Seminar Point”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D20","is_correct":true,"text":"To substantiate a claim in a seminar, a speaker should connect relevant evidence explicitly to the conclusion being proposed."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c2d83d8d-e720-55a4-9855-6bc291ec325e', 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b999bbdc-683b-51a8-90b4-90920b6655ba', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Challenging Ideas Constructively","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa6ed042-a4fe-5372-88d4-3e7837553294', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D01","left":"substantiate a claim","right":"обосновать утверждение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D02","left":"constructive challenge","right":"конструктивное возражение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D03","left":"build on a point","right":"развить мысль"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D04","left":"seek clarification","right":"запросить уточнение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D05","left":"counterexample","right":"контрпример"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D06","left":"moderate a discussion","right":"модерировать обсуждение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D07","left":"synthesise viewpoints","right":"обобщить точки зрения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d9172ca-3d87-592d-bc5b-2b923f7d46e9', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D08","is_correct":true,"text":"A constructive challenge acknowledges the value of an argument before questioning its assumptions or presenting a counterexample."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3aabf4d1-0e96-5a31-a5ac-3f68ef06808a', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A constructive challenge acknowledges the value of an argument before questioning its assumptions or presenting a counterexample.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Конструктивное возражение признаёт ценность аргумента, прежде чем подвергнуть сомнению его предположения или привести контрпример.","target_language":"en","word_bank":["A","constructive","challenge","acknowledges","the","value","of","an","argument","before","questioning","its","assumptions","or","presenting","a","counterexample","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63e3fb58-7cdb-5b95-a0ef-09f223f1ce87', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"constructive challenge","instruction":"Выберите подходящее слово.","options":["constructive challenge","counterexample","synthesise viewpoints"],"sentence_template":"A ___ acknowledges the value of an argument before questioning its assumptions or presenting a counterexample."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b784eaf-7042-530e-9bf0-90b613b8b4aa', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","constructive","challenge","acknowledges","the","value","of","an","argument","before","questioning","its","assumptions","or","presenting","a","counterexample","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","counterexample","a","presenting","or","assumptions","its","questioning","before","argument","an","of","value","the","acknowledges","challenge","constructive","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('903aaf35-6f17-5783-9a88-16627f235228', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A constructive challenge acknowledges the value of an argument before questioning its assumptions or presenting a counterexample. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('972d8fc4-e912-5935-bccc-07a86c0d1e92', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A constructive challenge acknowledges the value of an argument before questioning its assumptions or presenting a counterexample. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Конструктивное возражение признаёт ценность аргумента, прежде чем подвергнуть сомнению его предположения или привести контрпример. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a0bfac6-86cf-5c32-8ee7-520ebb48ff75', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A constructive challenge acknowledges the value of an argument before questioning its assumptions or presenting a counterexample.","translation":"Конструктивное возражение признаёт ценность аргумента, прежде чем подвергнуть сомнению его предположения или привести контрпример.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Challenging Ideas Constructively"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e77ca8e4-0c93-58bd-a8e6-e6456d235985', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“constructive challenge” means respectful criticism intended to improve an idea.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D11","is_correct":true,"text":"respectful criticism intended to improve an idea"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D12","is_correct":false,"text":"extend another speaker’s contribution"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D13","is_correct":false,"text":"ask for a more precise explanation"}],"word":"constructive challenge"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30d96ab8-9286-5609-bd90-c6d8d1e0191d', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A constructive challenge acknowledges the value of an argument before questioning its assumptions or presenting a counterexample.","explanation":"The missing academic expression is “constructive challenge”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"constructive challenge","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D14","is_correct":true},{"audio_text":"seek clarification","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D15","is_correct":false},{"audio_text":"moderate a discussion","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D16","is_correct":false}],"sentence_template":"A ___ acknowledges the value of an argument before questioning its assumptions or presenting a counterexample."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('320b0b69-6743-5f7a-ae41-5838d7b6d2fa', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"constructive challenge","explanation":"The complete academic statement uses “constructive challenge” precisely.","hint_prefix":"cons","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ acknowledges the value of an argument before questioning its assumptions or presenting a counterexample."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50e10e9d-2ca3-5bba-8312-e6397a756524', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"substantiate a claim","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D17","text":"substantiate a claim"},{"audio_text":"constructive challenge","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D18","text":"constructive challenge"},{"audio_text":"build on a point","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D19","text":"build on a point"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a7f0d22-f0f4-58af-bf8b-9e7a70274535', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Challenging Ideas Constructively”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D20","is_correct":true,"text":"A constructive challenge acknowledges the value of an argument before questioning its assumptions or presenting a counterexample."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c2d83d8d-e720-55a4-9855-6bc291ec325e', 'b999bbdc-683b-51a8-90b4-90920b6655ba', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('eac33ad7-2dbc-53ae-a0c3-48e4d5977923', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Synthesising a Discussion","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cfb7b32-4d09-5c76-a6ce-8aa6f891bb30', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D01","left":"substantiate a claim","right":"обосновать утверждение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D02","left":"constructive challenge","right":"конструктивное возражение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D03","left":"build on a point","right":"развить мысль"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D04","left":"seek clarification","right":"запросить уточнение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D05","left":"counterexample","right":"контрпример"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D06","left":"moderate a discussion","right":"модерировать обсуждение"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D07","left":"synthesise viewpoints","right":"обобщить точки зрения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9aa9522-2529-52d0-a159-6e80f7e085d5', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D08","is_correct":true,"text":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('227e90cb-275d-5a25-ae20-4ad8f78d6245', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эффективное резюме должно обобщать точки зрения, а не перечислять выступления по отдельности, показывая, где участники согласились и где сохранились разногласия.","target_language":"en","word_bank":["An","effective","summary","should","synthesise","viewpoints","rather","than","list","contributions","separately",",","showing","where","participants","agreed","and","where","disagreement","remained","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de1a08e5-5938-5640-86e0-f310ed882452', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"build on a point","instruction":"Выберите подходящее слово.","options":["build on a point","moderate a discussion","substantiate a claim"],"sentence_template":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19d20e80-05c6-5105-9485-ca73f8c23f03', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","effective","summary","should","synthesise","viewpoints","rather","than","list","contributions","separately",",","showing","where","participants","agreed","and","where","disagreement","remained","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","remained","disagreement","where","and","agreed","participants","where","showing",",","separately","contributions","list","than","rather","viewpoints","synthesise","should","summary","effective","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4783d6a6-c346-5a22-9d00-16a612a3ce31', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ca9e4c4-dc68-5e35-ad2f-a21a5d5c24de', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Эффективное резюме должно обобщать точки зрения, а не перечислять выступления по отдельности, показывая, где участники согласились и где сохранились разногласия. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09de81a7-763f-5128-b961-c1f2c792800a', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained.","translation":"Эффективное резюме должно обобщать точки зрения, а не перечислять выступления по отдельности, показывая, где участники согласились и где сохранились разногласия.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Synthesising a Discussion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a79fc4b0-c85b-5a9d-b4d2-4f615f1eaaa1', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“build on a point” means extend another speaker’s contribution.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D11","is_correct":true,"text":"extend another speaker’s contribution"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D12","is_correct":false,"text":"ask for a more precise explanation"},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D13","is_correct":false,"text":"an example that challenges a general claim"}],"word":"build on a point"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95b5c4bd-3f49-55ab-8147-8d69fcd15bcf', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained.","explanation":"The missing academic expression is “build on a point”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"build on a point","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D14","is_correct":true},{"audio_text":"counterexample","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D15","is_correct":false},{"audio_text":"synthesise viewpoints","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D16","is_correct":false}],"sentence_template":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fd06fe4-beb7-5141-99cc-da78c7ac6ada', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"build on a point","explanation":"The complete academic statement uses “build on a point” precisely.","hint_prefix":"buil","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0954119-e5be-5c73-ac1c-e9793d6e51e3', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"substantiate a claim","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D17","text":"substantiate a claim"},{"audio_text":"constructive challenge","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D18","text":"constructive challenge"},{"audio_text":"build on a point","id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D19","text":"build on a point"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76f10953-92e8-5495-bba9-64517882fab4', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Synthesising a Discussion”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D20","is_correct":true,"text":"An effective summary should synthesise viewpoints rather than list contributions separately, showing where participants agreed and where disagreement remained."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_SEMINARS_DEBATES_AND_PARTICIPATION_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c2d83d8d-e720-55a4-9855-6bc291ec325e', 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40c0b30d-458a-52cb-9a94-58cc3dba5a49', 'en', 'substantiate a claim', 'обосновать утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e1b6ab1-fe43-5ea2-94d9-8894da5084b1', 'en', 'constructive challenge', 'конструктивное возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cc828cf-9066-5231-bf8d-390816267c67', 'en', 'build on a point', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1df53c99-c60b-5b78-ab10-f93ac28fc0b3', 'en', 'seek clarification', 'запросить уточнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b472922d-8bd1-5314-9e88-72d31a31c2b3', 'en', 'counterexample', 'контрпример', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b065fa5-d563-57b2-b89d-dcd93744d278', 'en', 'moderate a discussion', 'модерировать обсуждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d448656d-41bc-55d8-baaf-0582094f85a5', 'en', 'synthesise viewpoints', 'обобщить точки зрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40c0b30d-458a-52cb-9a94-58cc3dba5a49', 'en', 'substantiate a claim', 'обосновать утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e1b6ab1-fe43-5ea2-94d9-8894da5084b1', 'en', 'constructive challenge', 'конструктивное возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cc828cf-9066-5231-bf8d-390816267c67', 'en', 'build on a point', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1df53c99-c60b-5b78-ab10-f93ac28fc0b3', 'en', 'seek clarification', 'запросить уточнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b472922d-8bd1-5314-9e88-72d31a31c2b3', 'en', 'counterexample', 'контрпример', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b065fa5-d563-57b2-b89d-dcd93744d278', 'en', 'moderate a discussion', 'модерировать обсуждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d448656d-41bc-55d8-baaf-0582094f85a5', 'en', 'synthesise viewpoints', 'обобщить точки зрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40c0b30d-458a-52cb-9a94-58cc3dba5a49', 'en', 'substantiate a claim', 'обосновать утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e1b6ab1-fe43-5ea2-94d9-8894da5084b1', 'en', 'constructive challenge', 'конструктивное возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cc828cf-9066-5231-bf8d-390816267c67', 'en', 'build on a point', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1df53c99-c60b-5b78-ab10-f93ac28fc0b3', 'en', 'seek clarification', 'запросить уточнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b472922d-8bd1-5314-9e88-72d31a31c2b3', 'en', 'counterexample', 'контрпример', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b065fa5-d563-57b2-b89d-dcd93744d278', 'en', 'moderate a discussion', 'модерировать обсуждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d448656d-41bc-55d8-baaf-0582094f85a5', 'en', 'synthesise viewpoints', 'обобщить точки зрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'substantiate a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'build on a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'seek clarification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterexample' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'moderate a discussion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'e67f3c6e-2d29-5ef7-8f17-a33e592af1db', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise viewpoints' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'b999bbdc-683b-51a8-90b4-90920b6655ba', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'substantiate a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'b999bbdc-683b-51a8-90b4-90920b6655ba', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'b999bbdc-683b-51a8-90b4-90920b6655ba', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'build on a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'b999bbdc-683b-51a8-90b4-90920b6655ba', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'seek clarification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'b999bbdc-683b-51a8-90b4-90920b6655ba', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterexample' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'b999bbdc-683b-51a8-90b4-90920b6655ba', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'moderate a discussion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'b999bbdc-683b-51a8-90b4-90920b6655ba', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise viewpoints' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'substantiate a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive challenge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'build on a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'seek clarification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterexample' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'moderate a discussion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c2d83d8d-e720-55a4-9855-6bc291ec325e', id, 'eac33ad7-2dbc-53ae-a0c3-48e4d5977923', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise viewpoints' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
