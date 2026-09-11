-- Track: B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2ab6fd0c-4478-5adf-b488-ad1e362f842f', 'B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY', 'Конспекты лекций, синтез и резюме', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Конспекты лекций, синтез и резюме»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Lecture Notes, Synthesis and Summary","ru":"Конспекты лекций, синтез и резюме"}'::jsonb, '{"en":"Develop independent B2 academic skills for lecture notes, synthesis and summary by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Конспекты лекций, синтез и резюме»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Following Lecture Structure","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f002fb0f-6fd4-5c7a-ab36-ba60b907b4c6', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D01","left":"signposting phrase","right":"фраза-маркер"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D02","left":"hierarchy of ideas","right":"иерархия идей"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D03","left":"paraphrase accurately","right":"точно перефразировать"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D04","left":"synthesise information","right":"синтезировать информацию"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D05","left":"distinguish evidence","right":"различать доказательства"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D06","left":"concise summary","right":"краткое резюме"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D07","left":"omit repetition","right":"исключать повторение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7aa35ede-96af-513a-a16b-c6eed1afcca6', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D08","is_correct":true,"text":"Recognising a signposting phrase helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b474cf62-39f5-581b-acef-81a8a64fb678', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Recognising a signposting phrase helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Распознавание фразы-маркера помогает слушателям предвидеть структуру лекции и организовывать записи в соответствии с иерархией идей.","target_language":"en","word_bank":["Recognising","a","signposting","phrase","helps","listeners","predict","the","lecture’s","structure","and","organise","notes","according","to","a","hierarchy","of","ideas","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('878eb532-5e87-5880-95ab-8ee094eee889', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"signposting phrase","instruction":"Выберите подходящее слово.","options":["signposting phrase","synthesise information","concise summary"],"sentence_template":"Recognising a ___ helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('839c41a0-13be-5303-9037-b5d98da91bdc', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Recognising","a","signposting","phrase","helps","listeners","predict","the","lecture’s","structure","and","organise","notes","according","to","a","hierarchy","of","ideas","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","ideas","of","hierarchy","a","to","according","notes","organise","and","structure","lecture’s","the","predict","listeners","helps","phrase","signposting","a","Recognising"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b125218-584a-5c5a-8c33-566d95a61881', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Recognising a signposting phrase helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa9752bd-e8e6-5798-88a0-3b53b835e56c', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Recognising a signposting phrase helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Распознавание фразы-маркера помогает слушателям предвидеть структуру лекции и организовывать записи в соответствии с иерархией идей. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d7f773a-2659-52b4-8ba1-969f96bb7548', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Recognising a signposting phrase helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas.","translation":"Распознавание фразы-маркера помогает слушателям предвидеть структуру лекции и организовывать записи в соответствии с иерархией идей.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Following Lecture Structure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('697a8032-9e6d-5559-8659-dbcf3165ebd6', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“signposting phrase” means language indicating the structure or direction of a lecture.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D11","is_correct":true,"text":"language indicating the structure or direction of a lecture"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D12","is_correct":false,"text":"the organisation of main and supporting points by importance"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D13","is_correct":false,"text":"express an idea faithfully in different words"}],"word":"signposting phrase"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3536bf5c-811b-57a1-b892-b99acf2f6755', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Recognising a signposting phrase helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas.","explanation":"The missing academic expression is “signposting phrase”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"signposting phrase","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D14","is_correct":true},{"audio_text":"paraphrase accurately","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D15","is_correct":false},{"audio_text":"distinguish evidence","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D16","is_correct":false}],"sentence_template":"Recognising a ___ helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ced382c6-3e9f-551f-9ccd-4f2c0acbf902', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"signposting phrase","explanation":"The complete academic statement uses “signposting phrase” precisely.","hint_prefix":"sign","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Recognising a ___ helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b07561c3-1fe9-5a0d-8c5d-b1a6617bb465', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"signposting phrase","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D17","text":"signposting phrase"},{"audio_text":"hierarchy of ideas","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D18","text":"hierarchy of ideas"},{"audio_text":"paraphrase accurately","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D19","text":"paraphrase accurately"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7ecb6eb-2322-572f-a9c6-f8ce798b1e19', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Following Lecture Structure”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D20","is_correct":true,"text":"Recognising a signposting phrase helps listeners predict the lecture’s structure and organise notes according to a hierarchy of ideas."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ab6fd0c-4478-5adf-b488-ad1e362f842f', '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('adf94f38-bbce-506e-a8b1-c0a51a0792d9', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Combining Ideas from Notes","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9ce245a-6515-551a-9e0e-1476393a4d84', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D01","left":"signposting phrase","right":"фраза-маркер"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D02","left":"hierarchy of ideas","right":"иерархия идей"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D03","left":"paraphrase accurately","right":"точно перефразировать"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D04","left":"synthesise information","right":"синтезировать информацию"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D05","left":"distinguish evidence","right":"различать доказательства"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D06","left":"concise summary","right":"краткое резюме"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D07","left":"omit repetition","right":"исключать повторение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ea74192-e091-5b7b-84a7-5132befe2643', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D08","is_correct":true,"text":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22e9f70d-6192-5a0b-ba16-512c0da9e458', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы синтезировать информацию, студенты должны выявлять связи между отдельными тезисами, а не копировать их в порядке прослушивания.","target_language":"en","word_bank":["To","synthesise","information",",","students","must","identify","relationships","between","separate","points","instead","of","copying","them","in","the","order","they","were","heard","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a0d9009-9fb2-5440-8c84-46230b6b1c3e', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hierarchy of ideas","instruction":"Выберите подходящее слово.","options":["hierarchy of ideas","distinguish evidence","omit repetition"],"sentence_template":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3236187-b5c7-5ff1-bf56-c83e70dc1876', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","synthesise","information",",","students","must","identify","relationships","between","separate","points","instead","of","copying","them","in","the","order","they","were","heard","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","heard","were","they","order","the","in","them","copying","of","instead","points","separate","between","relationships","identify","must","students",",","information","synthesise","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5421960-67cd-5334-a6cc-13dbb988c57a', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5aa9a283-973a-53f1-abd7-a3dc0d9222c4', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чтобы синтезировать информацию, студенты должны выявлять связи между отдельными тезисами, а не копировать их в порядке прослушивания. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fa45a1f-2b7b-53d4-8016-8515123076ef', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard.","translation":"Чтобы синтезировать информацию, студенты должны выявлять связи между отдельными тезисами, а не копировать их в порядке прослушивания.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Combining Ideas from Notes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c99a5a99-4b29-589a-8473-803a80a6c39d', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hierarchy of ideas” means the organisation of main and supporting points by importance.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D11","is_correct":true,"text":"the organisation of main and supporting points by importance"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D12","is_correct":false,"text":"express an idea faithfully in different words"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D13","is_correct":false,"text":"combine material from several parts or sources"}],"word":"hierarchy of ideas"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('327a32f5-4939-519b-a808-a7076432cf45', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard.","explanation":"The missing academic expression is “hierarchy of ideas”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hierarchy of ideas","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D14","is_correct":true},{"audio_text":"synthesise information","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D15","is_correct":false},{"audio_text":"concise summary","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D16","is_correct":false}],"sentence_template":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7d3b0c3-b75c-5dbd-99ca-105d073f7982', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hierarchy of ideas","explanation":"The complete academic statement uses “hierarchy of ideas” precisely.","hint_prefix":"hier","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3c85bc0-ec52-5bca-babb-445110dc5f05', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"signposting phrase","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D17","text":"signposting phrase"},{"audio_text":"hierarchy of ideas","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D18","text":"hierarchy of ideas"},{"audio_text":"paraphrase accurately","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D19","text":"paraphrase accurately"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('509cf44b-667f-500b-a210-8acd5bfb5cad', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Combining Ideas from Notes”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D20","is_correct":true,"text":"To synthesise information, students must identify relationships between separate points instead of copying them in the order they were heard."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ab6fd0c-4478-5adf-b488-ad1e362f842f', 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fce7beb6-4a10-5886-ba49-b7567719c974', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Producing an Accurate Summary","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('892dbea1-e4f4-5910-bb6a-713a4cb0de4a', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D01","left":"signposting phrase","right":"фраза-маркер"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D02","left":"hierarchy of ideas","right":"иерархия идей"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D03","left":"paraphrase accurately","right":"точно перефразировать"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D04","left":"synthesise information","right":"синтезировать информацию"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D05","left":"distinguish evidence","right":"различать доказательства"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D06","left":"concise summary","right":"краткое резюме"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D07","left":"omit repetition","right":"исключать повторение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c653a8c2-c02b-52f1-8055-714bd271c577', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D08","is_correct":true,"text":"A concise summary should paraphrase accurately, preserve the lecturer’s central argument, and omit repetition or minor examples."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6e3ad18-3851-58ed-9185-e265b56197a7', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A concise summary should paraphrase accurately, preserve the lecturer’s central argument, and omit repetition or minor examples.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Краткое резюме должно точно перефразировать, сохранять основной аргумент лектора и исключать повторы или второстепенные примеры.","target_language":"en","word_bank":["A","concise","summary","should","paraphrase","accurately",",","preserve","the","lecturer’s","central","argument",",","and","omit","repetition","or","minor","examples","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2dcd119-b307-5a0d-93ff-3680c8ba7ad9', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"paraphrase accurately","instruction":"Выберите подходящее слово.","options":["paraphrase accurately","concise summary","signposting phrase"],"sentence_template":"A concise summary should ___, preserve the lecturer’s central argument, and omit repetition or minor examples."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f49bf2ca-79f5-5184-bf83-dddf1e406b88', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","concise","summary","should","paraphrase","accurately",",","preserve","the","lecturer’s","central","argument",",","and","omit","repetition","or","minor","examples","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","examples","minor","or","repetition","omit","and",",","argument","central","lecturer’s","the","preserve",",","accurately","paraphrase","should","summary","concise","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39f295b5-d97c-51c6-9ab6-dd016c696b17', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A concise summary should paraphrase accurately, preserve the lecturer’s central argument, and omit repetition or minor examples. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fc6db36-6f43-5f69-8ffd-84f2cdc8a54b', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A concise summary should paraphrase accurately, preserve the lecturer’s central argument, and omit repetition or minor examples. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Краткое резюме должно точно перефразировать, сохранять основной аргумент лектора и исключать повторы или второстепенные примеры. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbdb580c-e4e1-52a4-b5cc-de78577ff3d7', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A concise summary should paraphrase accurately, preserve the lecturer’s central argument, and omit repetition or minor examples.","translation":"Краткое резюме должно точно перефразировать, сохранять основной аргумент лектора и исключать повторы или второстепенные примеры.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Producing an Accurate Summary"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f45ad23-a0f6-5ab8-a757-389fb715a914', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“paraphrase accurately” means express an idea faithfully in different words.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D11","is_correct":true,"text":"express an idea faithfully in different words"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D12","is_correct":false,"text":"combine material from several parts or sources"},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D13","is_correct":false,"text":"separate supporting information from claims or examples"}],"word":"paraphrase accurately"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34cbc073-b06e-51a0-a298-34516e555b54', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A concise summary should paraphrase accurately, preserve the lecturer’s central argument, and omit repetition or minor examples.","explanation":"The missing academic expression is “paraphrase accurately”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"paraphrase accurately","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D14","is_correct":true},{"audio_text":"distinguish evidence","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D15","is_correct":false},{"audio_text":"omit repetition","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D16","is_correct":false}],"sentence_template":"A concise summary should ___, preserve the lecturer’s central argument, and omit repetition or minor examples."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea071dc8-6620-51bd-a375-d4d236cf3bc1', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"paraphrase accurately","explanation":"The complete academic statement uses “paraphrase accurately” precisely.","hint_prefix":"para","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A concise summary should ___, preserve the lecturer’s central argument, and omit repetition or minor examples."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f8b7f8b-5390-58ad-a120-63db5d1b84d8', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"signposting phrase","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D17","text":"signposting phrase"},{"audio_text":"hierarchy of ideas","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D18","text":"hierarchy of ideas"},{"audio_text":"paraphrase accurately","id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D19","text":"paraphrase accurately"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c10250b4-94cd-5423-b30a-57fc4a350b83', 'fce7beb6-4a10-5886-ba49-b7567719c974', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Producing an Accurate Summary”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D20","is_correct":true,"text":"A concise summary should paraphrase accurately, preserve the lecturer’s central argument, and omit repetition or minor examples."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_LECTURE_NOTES_SYNTHESIS_AND_SUMMARY_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ab6fd0c-4478-5adf-b488-ad1e362f842f', 'fce7beb6-4a10-5886-ba49-b7567719c974', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9759fc6a-c7f8-5e02-8525-eca303eb69e4', 'en', 'signposting phrase', 'фраза-маркер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac3b3b12-06ea-519f-bf7b-a98c49c951b0', 'en', 'hierarchy of ideas', 'иерархия идей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('618c285a-b7f0-5f5b-87af-ef3be73619e0', 'en', 'paraphrase accurately', 'точно перефразировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4922fb0f-825c-5557-9be7-2f02f7f1099d', 'en', 'synthesise information', 'синтезировать информацию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('111a2517-80a2-5315-8fb1-430368c41dbf', 'en', 'distinguish evidence', 'различать доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97744e5c-f71a-5ca6-881f-668d3ecc0abd', 'en', 'concise summary', 'краткое резюме', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('986433fb-6041-55bc-8e26-467d33a4e1f3', 'en', 'omit repetition', 'исключать повторение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9759fc6a-c7f8-5e02-8525-eca303eb69e4', 'en', 'signposting phrase', 'фраза-маркер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac3b3b12-06ea-519f-bf7b-a98c49c951b0', 'en', 'hierarchy of ideas', 'иерархия идей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('618c285a-b7f0-5f5b-87af-ef3be73619e0', 'en', 'paraphrase accurately', 'точно перефразировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4922fb0f-825c-5557-9be7-2f02f7f1099d', 'en', 'synthesise information', 'синтезировать информацию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('111a2517-80a2-5315-8fb1-430368c41dbf', 'en', 'distinguish evidence', 'различать доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97744e5c-f71a-5ca6-881f-668d3ecc0abd', 'en', 'concise summary', 'краткое резюме', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('986433fb-6041-55bc-8e26-467d33a4e1f3', 'en', 'omit repetition', 'исключать повторение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9759fc6a-c7f8-5e02-8525-eca303eb69e4', 'en', 'signposting phrase', 'фраза-маркер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac3b3b12-06ea-519f-bf7b-a98c49c951b0', 'en', 'hierarchy of ideas', 'иерархия идей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('618c285a-b7f0-5f5b-87af-ef3be73619e0', 'en', 'paraphrase accurately', 'точно перефразировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4922fb0f-825c-5557-9be7-2f02f7f1099d', 'en', 'synthesise information', 'синтезировать информацию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('111a2517-80a2-5315-8fb1-430368c41dbf', 'en', 'distinguish evidence', 'различать доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97744e5c-f71a-5ca6-881f-668d3ecc0abd', 'en', 'concise summary', 'краткое резюме', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('986433fb-6041-55bc-8e26-467d33a4e1f3', 'en', 'omit repetition', 'исключать повторение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'signposting phrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'hierarchy of ideas' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrase accurately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise information' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'distinguish evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'concise summary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, '6193b9d8-57e1-50e4-9e14-8c2b881cb3d4', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'omit repetition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'signposting phrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hierarchy of ideas' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrase accurately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise information' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'distinguish evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'concise summary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'adf94f38-bbce-506e-a8b1-c0a51a0792d9', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'omit repetition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'fce7beb6-4a10-5886-ba49-b7567719c974', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'signposting phrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'fce7beb6-4a10-5886-ba49-b7567719c974', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hierarchy of ideas' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'fce7beb6-4a10-5886-ba49-b7567719c974', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrase accurately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'fce7beb6-4a10-5886-ba49-b7567719c974', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'synthesise information' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'fce7beb6-4a10-5886-ba49-b7567719c974', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'distinguish evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'fce7beb6-4a10-5886-ba49-b7567719c974', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'concise summary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ab6fd0c-4478-5adf-b488-ad1e362f842f', id, 'fce7beb6-4a10-5886-ba49-b7567719c974', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'omit repetition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
