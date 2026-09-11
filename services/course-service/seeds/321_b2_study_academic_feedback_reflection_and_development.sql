-- Track: B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('29eb7242-6355-5588-995e-209c96027a8f', 'B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT', 'Академическая обратная связь, рефлексия и развитие', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Академическая обратная связь, рефлексия и развитие»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Academic Feedback, Reflection and Development","ru":"Академическая обратная связь, рефлексия и развитие"}'::jsonb, '{"en":"Develop independent B2 academic skills for academic feedback, reflection and development by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Академическая обратная связь, рефлексия и развитие»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9315f9f5-1053-5800-9bbb-4ce8ef788bb8', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Interpreting Detailed Feedback","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de944b53-16de-556e-a1b3-4f54328a0b34', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D01","left":"actionable feedback","right":"практическая обратная связь"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D02","left":"recurring weakness","right":"повторяющийся недостаток"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D03","left":"performance criterion","right":"критерий выполнения"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D04","left":"reflective practice","right":"рефлексивная практика"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D05","left":"implement a revision","right":"внести исправление"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D06","left":"measure improvement","right":"измерять улучшение"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D07","left":"development priority","right":"приоритет развития"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e174d048-5e0f-55b5-b270-d3108125f1d6', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D08","is_correct":true,"text":"Actionable feedback identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbbb1e74-1b1f-5165-bd7c-ebd230e52c35', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Actionable feedback identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Практическая обратная связь выявляет конкретную проблему, объясняет её влияние на работу и предлагает реалистичную стратегию улучшения.","target_language":"en","word_bank":["Actionable","feedback","identifies","a","specific","problem",",","explains","its","effect","on","the","work",",","and","suggests","a","realistic","strategy","for","improvement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ccef2c9-0d52-5777-8f90-fa94a65fc1da', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"actionable feedback","instruction":"Выберите подходящее слово.","options":["actionable feedback","reflective practice","measure improvement"],"sentence_template":"___ identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4db73bce-2dd6-58a7-a1eb-d3f9f9273cba', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Actionable","feedback","identifies","a","specific","problem",",","explains","its","effect","on","the","work",",","and","suggests","a","realistic","strategy","for","improvement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","improvement","for","strategy","realistic","a","suggests","and",",","work","the","on","effect","its","explains",",","problem","specific","a","identifies","feedback","Actionable"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc4ecae0-fa0f-5fab-bac8-1002928679c8', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Actionable feedback identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cba6941f-e9ec-53aa-be29-13f283a68d10', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Actionable feedback identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Практическая обратная связь выявляет конкретную проблему, объясняет её влияние на работу и предлагает реалистичную стратегию улучшения. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d31ed77-2bc1-5eb2-9031-a3e70c896163', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Actionable feedback identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement.","translation":"Практическая обратная связь выявляет конкретную проблему, объясняет её влияние на работу и предлагает реалистичную стратегию улучшения.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Interpreting Detailed Feedback"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('436f3510-23ad-515d-958d-d316dba6e6cf', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“actionable feedback” means comments that specify how performance can be improved.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D11","is_correct":true,"text":"comments that specify how performance can be improved"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D12","is_correct":false,"text":"a problem that appears repeatedly across different tasks"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D13","is_correct":false,"text":"a standard against which work is evaluated"}],"word":"actionable feedback"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5f7f1d1-65b4-5f53-b121-891eb5ce3835', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Actionable feedback identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement.","explanation":"The missing academic expression is “actionable feedback”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"actionable feedback","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D14","is_correct":true},{"audio_text":"performance criterion","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D15","is_correct":false},{"audio_text":"implement a revision","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D16","is_correct":false}],"sentence_template":"___ identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a0e22e0-3dba-56b8-b9f5-e681167f76b6', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"actionable feedback","explanation":"The complete academic statement uses “actionable feedback” precisely.","hint_prefix":"acti","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('761b325b-e95b-53e6-82a5-b77fa0d270ce', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"actionable feedback","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D17","text":"actionable feedback"},{"audio_text":"recurring weakness","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D18","text":"recurring weakness"},{"audio_text":"performance criterion","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D19","text":"performance criterion"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('319b8c42-0782-5895-ab1a-a4ddb258fe2f', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Interpreting Detailed Feedback”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D20","is_correct":true,"text":"Actionable feedback identifies a specific problem, explains its effect on the work, and suggests a realistic strategy for improvement."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('29eb7242-6355-5588-995e-209c96027a8f', '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Evaluating Your Performance","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac45bc45-cba1-581f-9e08-79c0087a3795', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D01","left":"actionable feedback","right":"практическая обратная связь"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D02","left":"recurring weakness","right":"повторяющийся недостаток"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D03","left":"performance criterion","right":"критерий выполнения"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D04","left":"reflective practice","right":"рефлексивная практика"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D05","left":"implement a revision","right":"внести исправление"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D06","left":"measure improvement","right":"измерять улучшение"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D07","left":"development priority","right":"приоритет развития"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e8cef50-9530-533d-91c8-0cf80a3b3fa8', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D08","is_correct":true,"text":"A recurring weakness should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c231a3a-cc70-5304-a781-430abc9fa138', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A recurring weakness should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Повторяющийся недостаток следует сравнивать в разных заданиях, чтобы определить, связан ли он с ограниченными знаниями, неэффективным планированием или неточным редактированием.","target_language":"en","word_bank":["A","recurring","weakness","should","be","compared","across","assignments","to","determine","whether","it","reflects","limited","knowledge",",","ineffective","planning",",","or","inaccurate","editing","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd36ecc6-e5b7-51ef-9701-e40865efa5dd', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"recurring weakness","instruction":"Выберите подходящее слово.","options":["recurring weakness","implement a revision","development priority"],"sentence_template":"A ___ should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58dcfa82-13c2-5610-b31f-4f9c7a317a3a', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","recurring","weakness","should","be","compared","across","assignments","to","determine","whether","it","reflects","limited","knowledge",",","ineffective","planning",",","or","inaccurate","editing","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","editing","inaccurate","or",",","planning","ineffective",",","knowledge","limited","reflects","it","whether","determine","to","assignments","across","compared","be","should","weakness","recurring","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf687d32-8d0f-52f7-b7b0-c2cbec13f64a', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A recurring weakness should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('119b2a81-f305-546f-b5df-53f28231a100', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A recurring weakness should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Повторяющийся недостаток следует сравнивать в разных заданиях, чтобы определить, связан ли он с ограниченными знаниями, неэффективным планированием или неточным редактированием. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bfb9086-785d-5acc-b7c9-e1d3c24a3975', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A recurring weakness should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing.","translation":"Повторяющийся недостаток следует сравнивать в разных заданиях, чтобы определить, связан ли он с ограниченными знаниями, неэффективным планированием или неточным редактированием.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Evaluating Your Performance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86a4d87a-8f51-5edc-9f91-7d7ba127fba6', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“recurring weakness” means a problem that appears repeatedly across different tasks.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D11","is_correct":true,"text":"a problem that appears repeatedly across different tasks"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D12","is_correct":false,"text":"a standard against which work is evaluated"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D13","is_correct":false,"text":"systematic consideration of experience to improve future work"}],"word":"recurring weakness"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6b2be86-1a21-5a3e-b3f6-2ee7ea710f1d', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A recurring weakness should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing.","explanation":"The missing academic expression is “recurring weakness”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"recurring weakness","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D14","is_correct":true},{"audio_text":"reflective practice","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D15","is_correct":false},{"audio_text":"measure improvement","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D16","is_correct":false}],"sentence_template":"A ___ should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('849650a4-a2ec-5f8f-8f87-ef9c90a04b51', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"recurring weakness","explanation":"The complete academic statement uses “recurring weakness” precisely.","hint_prefix":"recu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bde25bb-9d5b-54e4-a8d7-cbce8cff9352', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"actionable feedback","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D17","text":"actionable feedback"},{"audio_text":"recurring weakness","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D18","text":"recurring weakness"},{"audio_text":"performance criterion","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D19","text":"performance criterion"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f828a13-1818-52da-91fe-5af866b35788', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Evaluating Your Performance”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D20","is_correct":true,"text":"A recurring weakness should be compared across assignments to determine whether it reflects limited knowledge, ineffective planning, or inaccurate editing."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('29eb7242-6355-5588-995e-209c96027a8f', 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Planning Further Development","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bcc06f2-cc3b-5bb6-a5aa-15cf58f2c73e', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D01","left":"actionable feedback","right":"практическая обратная связь"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D02","left":"recurring weakness","right":"повторяющийся недостаток"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D03","left":"performance criterion","right":"критерий выполнения"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D04","left":"reflective practice","right":"рефлексивная практика"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D05","left":"implement a revision","right":"внести исправление"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D06","left":"measure improvement","right":"измерять улучшение"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D07","left":"development priority","right":"приоритет развития"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e679b2f7-12f2-5cc4-8014-dfc9d5da1da7', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D08","is_correct":true,"text":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('471d5cea-18f3-55cb-bfe2-cb5ca163fc3e', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Рефлексивная практика становится содержательной, когда учащиеся выбирают приоритет развития, вносят исправление и измеряют улучшение по чёткому критерию.","target_language":"en","word_bank":["Reflective","practice","becomes","meaningful","when","learners","select","a","development","priority",",","implement","a","revision",",","and","measure","improvement","against","a","clear","criterion","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7d93385-575d-529b-b1cc-ab1ac1d3996c', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"performance criterion","instruction":"Выберите подходящее слово.","options":["performance criterion","measure improvement","actionable feedback"],"sentence_template":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a28a0d6-6939-58c6-a55d-9cf48dc1fe75', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Reflective","practice","becomes","meaningful","when","learners","select","a","development","priority",",","implement","a","revision",",","and","measure","improvement","against","a","clear","criterion","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","criterion","clear","a","against","improvement","measure","and",",","revision","a","implement",",","priority","development","a","select","learners","when","meaningful","becomes","practice","Reflective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9809ba5-5e9c-5c36-9ba1-81efe3f4d096', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9c1e6c5-ce8a-5792-bcb1-fdb0bd6915ea', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Рефлексивная практика становится содержательной, когда учащиеся выбирают приоритет развития, вносят исправление и измеряют улучшение по чёткому критерию. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10b3f9c9-b2ee-5762-8f6b-dd2046596514', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion.","translation":"Рефлексивная практика становится содержательной, когда учащиеся выбирают приоритет развития, вносят исправление и измеряют улучшение по чёткому критерию.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Planning Further Development"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3311c33-a6c6-5f1b-adaf-bb298534b956', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“performance criterion” means a standard against which work is evaluated.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D11","is_correct":true,"text":"a standard against which work is evaluated"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D12","is_correct":false,"text":"systematic consideration of experience to improve future work"},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D13","is_correct":false,"text":"apply a planned change to a piece of work"}],"word":"performance criterion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e87b5ce9-b2ad-5b06-8609-1090df81e71f', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion.","explanation":"The missing academic expression is “performance criterion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"performance criterion","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D14","is_correct":true},{"audio_text":"implement a revision","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D15","is_correct":false},{"audio_text":"development priority","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D16","is_correct":false}],"sentence_template":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('364a7de3-f453-5e42-9b1f-97bd6efbc05a', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"performance criterion","explanation":"The complete academic statement uses “performance criterion” precisely.","hint_prefix":"perf","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1126e186-3ac2-5847-994f-5c929b305d93', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"actionable feedback","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D17","text":"actionable feedback"},{"audio_text":"recurring weakness","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D18","text":"recurring weakness"},{"audio_text":"performance criterion","id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D19","text":"performance criterion"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87d0db00-faf4-509a-8474-02a2eebd7b9d', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Planning Further Development”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D20","is_correct":true,"text":"Reflective practice becomes meaningful when learners select a development priority, implement a revision, and measure improvement against a clear criterion."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_FEEDBACK_REFLECTION_AND_DEVELOPMENT_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('29eb7242-6355-5588-995e-209c96027a8f', 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e72613e6-1d80-5eba-ae77-ba3d3815b2f6', 'en', 'actionable feedback', 'практическая обратная связь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcd124c6-282f-547a-9476-9dc02eee65e8', 'en', 'recurring weakness', 'повторяющийся недостаток', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c29da8b6-4aa3-5458-8be9-b3cfceeee307', 'en', 'performance criterion', 'критерий выполнения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('faf498d1-6a3c-54e0-bf27-c09f30ad3341', 'en', 'reflective practice', 'рефлексивная практика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa5ca8b2-17a6-5dbe-9453-d427b918b492', 'en', 'implement a revision', 'внести исправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('569ec454-2fb5-54e8-9351-57067981cffa', 'en', 'measure improvement', 'измерять улучшение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('47f30ab9-93e3-5a21-af7a-445823a14fad', 'en', 'development priority', 'приоритет развития', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e72613e6-1d80-5eba-ae77-ba3d3815b2f6', 'en', 'actionable feedback', 'практическая обратная связь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcd124c6-282f-547a-9476-9dc02eee65e8', 'en', 'recurring weakness', 'повторяющийся недостаток', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c29da8b6-4aa3-5458-8be9-b3cfceeee307', 'en', 'performance criterion', 'критерий выполнения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('faf498d1-6a3c-54e0-bf27-c09f30ad3341', 'en', 'reflective practice', 'рефлексивная практика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa5ca8b2-17a6-5dbe-9453-d427b918b492', 'en', 'implement a revision', 'внести исправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('569ec454-2fb5-54e8-9351-57067981cffa', 'en', 'measure improvement', 'измерять улучшение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('47f30ab9-93e3-5a21-af7a-445823a14fad', 'en', 'development priority', 'приоритет развития', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e72613e6-1d80-5eba-ae77-ba3d3815b2f6', 'en', 'actionable feedback', 'практическая обратная связь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcd124c6-282f-547a-9476-9dc02eee65e8', 'en', 'recurring weakness', 'повторяющийся недостаток', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c29da8b6-4aa3-5458-8be9-b3cfceeee307', 'en', 'performance criterion', 'критерий выполнения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('faf498d1-6a3c-54e0-bf27-c09f30ad3341', 'en', 'reflective practice', 'рефлексивная практика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa5ca8b2-17a6-5dbe-9453-d427b918b492', 'en', 'implement a revision', 'внести исправление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('569ec454-2fb5-54e8-9351-57067981cffa', 'en', 'measure improvement', 'измерять улучшение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('47f30ab9-93e3-5a21-af7a-445823a14fad', 'en', 'development priority', 'приоритет развития', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'recurring weakness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflective practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement a revision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'measure improvement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, '9315f9f5-1053-5800-9bbb-4ce8ef788bb8', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'development priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'recurring weakness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflective practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement a revision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'measure improvement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'cb0a6b89-d9b8-5ffe-9d7b-2e360149cf16', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'development priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'recurring weakness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflective practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement a revision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'measure improvement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29eb7242-6355-5588-995e-209c96027a8f', id, 'b85267bf-496e-5fcf-a7fe-b4b8f4200ed0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'development priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
