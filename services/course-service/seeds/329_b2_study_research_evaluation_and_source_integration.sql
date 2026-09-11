-- Track: B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1f460f33-ce19-59db-8583-ab4c1e2e0515', 'B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION', 'Исследование, оценка и интеграция источников', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Исследование, оценка и интеграция источников»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Research, Evaluation and Source Integration","ru":"Исследование, оценка и интеграция источников"}'::jsonb, '{"en":"Develop independent B2 academic skills for research, evaluation and source integration by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Исследование, оценка и интеграция источников»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('91b1669c-58d1-5e16-bf6e-7096276ff09d', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Developing a Research Question","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a90de91f-03be-548c-9f20-ebbe2b591131', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D01","left":"research question","right":"исследовательский вопрос"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D02","left":"peer-reviewed source","right":"рецензируемый источник"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D03","left":"source credibility","right":"достоверность источника"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D04","left":"citation practice","right":"практика цитирования"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D05","left":"integrate a quotation","right":"встроить цитату"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D06","left":"paraphrase","right":"перефразировать"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D07","left":"conflict of interest","right":"конфликт интересов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79f28605-fa87-5882-af00-063c9ff38f9c', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D08","is_correct":true,"text":"A focused research question defines what evidence is relevant and prevents the investigation from becoming too broad to manage."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2810cc4a-5f20-5257-8082-4396bbcdfe2e', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A focused research question defines what evidence is relevant and prevents the investigation from becoming too broad to manage.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сфокусированный исследовательский вопрос определяет, какие доказательства уместны, и не позволяет исследованию стать слишком широким.","target_language":"en","word_bank":["A","focused","research","question","defines","what","evidence","is","relevant","and","prevents","the","investigation","from","becoming","too","broad","to","manage","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbc041af-ffae-58be-b1d0-927dc82bc546', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"research question","instruction":"Выберите подходящее слово.","options":["research question","citation practice","paraphrase"],"sentence_template":"A focused ___ defines what evidence is relevant and prevents the investigation from becoming too broad to manage."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25a322a7-ff43-59fb-891a-4a1ded910ed6', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","focused","research","question","defines","what","evidence","is","relevant","and","prevents","the","investigation","from","becoming","too","broad","to","manage","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","manage","to","broad","too","becoming","from","investigation","the","prevents","and","relevant","is","evidence","what","defines","question","research","focused","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f97d617c-fda3-5706-bcbb-99596c5951d9', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A focused research question defines what evidence is relevant and prevents the investigation from becoming too broad to manage. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e081b69-ba85-519f-a866-1f6f8b576d80', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A focused research question defines what evidence is relevant and prevents the investigation from becoming too broad to manage. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Сфокусированный исследовательский вопрос определяет, какие доказательства уместны, и не позволяет исследованию стать слишком широким. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0a7b8be-af34-5adc-85a8-03dbb9bceb9d', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A focused research question defines what evidence is relevant and prevents the investigation from becoming too broad to manage.","translation":"Сфокусированный исследовательский вопрос определяет, какие доказательства уместны, и не позволяет исследованию стать слишком широким.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Developing a Research Question"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c79b576-8395-5c89-9347-c59234cfcc0d', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“research question” means a focused question that guides an investigation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D11","is_correct":true,"text":"a focused question that guides an investigation"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D12","is_correct":false,"text":"academic work evaluated by specialists before publication"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D13","is_correct":false,"text":"the degree to which information can be trusted"}],"word":"research question"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2495836c-d8e8-5d63-b213-ba1f0b141582', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A focused research question defines what evidence is relevant and prevents the investigation from becoming too broad to manage.","explanation":"The missing academic expression is “research question”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"research question","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D14","is_correct":true},{"audio_text":"source credibility","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D15","is_correct":false},{"audio_text":"integrate a quotation","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D16","is_correct":false}],"sentence_template":"A focused ___ defines what evidence is relevant and prevents the investigation from becoming too broad to manage."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e534cb5-c400-5dcf-8390-f7c819deb337', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"research question","explanation":"The complete academic statement uses “research question” precisely.","hint_prefix":"rese","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A focused ___ defines what evidence is relevant and prevents the investigation from becoming too broad to manage."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4954cb69-aa00-52f3-b604-ee4921d31d2f', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"research question","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D17","text":"research question"},{"audio_text":"peer-reviewed source","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D18","text":"peer-reviewed source"},{"audio_text":"source credibility","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D19","text":"source credibility"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('044f7793-c271-5991-b482-22a1abb20613', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Developing a Research Question”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D20","is_correct":true,"text":"A focused research question defines what evidence is relevant and prevents the investigation from becoming too broad to manage."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1f460f33-ce19-59db-8583-ab4c1e2e0515', '91b1669c-58d1-5e16-bf6e-7096276ff09d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('78b1fe6a-94d3-518c-b104-7e45195ce88b', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Evaluating Reliability","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8e82bcc-ff2a-5417-8bbc-117a20b5c216', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D01","left":"research question","right":"исследовательский вопрос"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D02","left":"peer-reviewed source","right":"рецензируемый источник"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D03","left":"source credibility","right":"достоверность источника"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D04","left":"citation practice","right":"практика цитирования"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D05","left":"integrate a quotation","right":"встроить цитату"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D06","left":"paraphrase","right":"перефразировать"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D07","left":"conflict of interest","right":"конфликт интересов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c735cfa-4280-5653-a2e3-223959ffd707', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D08","is_correct":true,"text":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b487d48-7b25-5e70-bd43-5aa001712ac9', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Достоверность источника зависит от компетентности, методологии, контекста публикации и раскрытия возможного конфликта интересов.","target_language":"en","word_bank":["Source","credibility","depends","on","expertise",",","methodology",",","publication","context",",","and","whether","a","conflict","of","interest","has","been","disclosed","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('740f8ffd-ea5f-5548-bb0f-4ea18c1b6561', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"peer-reviewed source","instruction":"Выберите подходящее слово.","options":["peer-reviewed source","integrate a quotation","conflict of interest"],"sentence_template":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf332b46-f733-5bd5-8cae-1085d919fcb9', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Source","credibility","depends","on","expertise",",","methodology",",","publication","context",",","and","whether","a","conflict","of","interest","has","been","disclosed","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","disclosed","been","has","interest","of","conflict","a","whether","and",",","context","publication",",","methodology",",","expertise","on","depends","credibility","Source"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a70d6efd-6b5e-5fa7-bb36-4fbcc66ef603', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecc8cc00-432b-5f99-9c1a-f6de8c7dbaed', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Достоверность источника зависит от компетентности, методологии, контекста публикации и раскрытия возможного конфликта интересов. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e83aeb3-5c59-5813-9b1a-c0d5b1400934', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed.","translation":"Достоверность источника зависит от компетентности, методологии, контекста публикации и раскрытия возможного конфликта интересов.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Evaluating Reliability"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('419eb2c5-8b6d-572a-a093-472995e75f21', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“peer-reviewed source” means academic work evaluated by specialists before publication.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D11","is_correct":true,"text":"academic work evaluated by specialists before publication"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D12","is_correct":false,"text":"the degree to which information can be trusted"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D13","is_correct":false,"text":"the conventions used to acknowledge sources"}],"word":"peer-reviewed source"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b561ea8f-f50a-5c18-aa63-a6a0226e291c', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed.","explanation":"The missing academic expression is “peer-reviewed source”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"peer-reviewed source","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D14","is_correct":true},{"audio_text":"citation practice","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D15","is_correct":false},{"audio_text":"paraphrase","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D16","is_correct":false}],"sentence_template":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61d92f8f-c6a4-5ee6-9bdb-5c2ee67c6717', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"peer-reviewed source","explanation":"The complete academic statement uses “peer-reviewed source” precisely.","hint_prefix":"peer","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a72d5c9-18c2-5fe1-8b00-f6ac34873fad', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"research question","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D17","text":"research question"},{"audio_text":"peer-reviewed source","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D18","text":"peer-reviewed source"},{"audio_text":"source credibility","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D19","text":"source credibility"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fee27b3-b1b9-5ee1-ad67-c475ce7a7e31', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Evaluating Reliability”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D20","is_correct":true,"text":"Source credibility depends on expertise, methodology, publication context, and whether a conflict of interest has been disclosed."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1f460f33-ce19-59db-8583-ab4c1e2e0515', '78b1fe6a-94d3-518c-b104-7e45195ce88b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f9944084-2f9e-588e-b6ff-22ce036b3071', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Paraphrasing and Integrating Sources","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cec3740-e989-5deb-ad2b-1f26533b8946', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D01","left":"research question","right":"исследовательский вопрос"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D02","left":"peer-reviewed source","right":"рецензируемый источник"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D03","left":"source credibility","right":"достоверность источника"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D04","left":"citation practice","right":"практика цитирования"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D05","left":"integrate a quotation","right":"встроить цитату"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D06","left":"paraphrase","right":"перефразировать"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D07","left":"conflict of interest","right":"конфликт интересов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bffda07f-46b8-5224-bb0a-5911d003736f', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D08","is_correct":true,"text":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b49efb9-0683-5f68-8cad-8ec263b97643', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы ответственно перефразировать, автор должен сохранить смысл источника, существенно изменить формулировку и структуру и привести ссылку.","target_language":"en","word_bank":["To","paraphrase","responsibly",",","a","writer","must","preserve","the","source’s","meaning",",","substantially","change","the","wording","and","structure",",","and","provide","a","citation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8400141d-f27c-5694-84ef-2487cde0a164', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"source credibility","instruction":"Выберите подходящее слово.","options":["source credibility","paraphrase","research question"],"sentence_template":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b039edb-f92e-5db5-a705-7224ca1a23d9', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","paraphrase","responsibly",",","a","writer","must","preserve","the","source’s","meaning",",","substantially","change","the","wording","and","structure",",","and","provide","a","citation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","citation","a","provide","and",",","structure","and","wording","the","change","substantially",",","meaning","source’s","the","preserve","must","writer","a",",","responsibly","paraphrase","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae8c2c9e-a68b-5a62-893a-20f270cdda99', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('335fdc83-58e5-5552-8ed4-4cb84c8f216f', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чтобы ответственно перефразировать, автор должен сохранить смысл источника, существенно изменить формулировку и структуру и привести ссылку. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75aef112-bdfb-56f1-b738-06684450c248', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation.","translation":"Чтобы ответственно перефразировать, автор должен сохранить смысл источника, существенно изменить формулировку и структуру и привести ссылку.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Paraphrasing and Integrating Sources"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f414a9fd-c1a0-58f7-89a1-1be9598289b8', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“source credibility” means the degree to which information can be trusted.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D11","is_correct":true,"text":"the degree to which information can be trusted"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D12","is_correct":false,"text":"the conventions used to acknowledge sources"},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D13","is_correct":false,"text":"incorporate quoted words smoothly into an argument"}],"word":"source credibility"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2090a7d0-cd84-5628-9374-f516bbf7dcb8', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation.","explanation":"The missing academic expression is “source credibility”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"source credibility","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D14","is_correct":true},{"audio_text":"integrate a quotation","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D15","is_correct":false},{"audio_text":"conflict of interest","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D16","is_correct":false}],"sentence_template":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0dad6a8-ecc2-5000-9c54-5b159273201d', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"source credibility","explanation":"The complete academic statement uses “source credibility” precisely.","hint_prefix":"sour","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5eb65ec-3b71-5cf1-a86c-6f9f56ac13f2', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"research question","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D17","text":"research question"},{"audio_text":"peer-reviewed source","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D18","text":"peer-reviewed source"},{"audio_text":"source credibility","id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D19","text":"source credibility"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ae8ec09-b68b-5a66-b779-c64a59498b5a', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Paraphrasing and Integrating Sources”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D20","is_correct":true,"text":"To paraphrase responsibly, a writer must preserve the source’s meaning, substantially change the wording and structure, and provide a citation."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_RESEARCH_EVALUATION_AND_SOURCE_INTEGRATION_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1f460f33-ce19-59db-8583-ab4c1e2e0515', 'f9944084-2f9e-588e-b6ff-22ce036b3071', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('497c212b-d9f1-55e4-8d87-161d95f2b917', 'en', 'research question', 'исследовательский вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5acfff6d-5d95-5faa-925e-fc73e2344c34', 'en', 'peer-reviewed source', 'рецензируемый источник', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394531b-1c2a-5c20-8b09-95a71063c963', 'en', 'source credibility', 'достоверность источника', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e043d1b-f7c7-5b40-b705-5ab73e02a420', 'en', 'citation practice', 'практика цитирования', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('315e181e-53e0-5393-9796-9e5dd8ead69a', 'en', 'integrate a quotation', 'встроить цитату', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a517021-0192-52b9-b381-551a99701506', 'en', 'paraphrase', 'перефразировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('497c212b-d9f1-55e4-8d87-161d95f2b917', 'en', 'research question', 'исследовательский вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5acfff6d-5d95-5faa-925e-fc73e2344c34', 'en', 'peer-reviewed source', 'рецензируемый источник', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394531b-1c2a-5c20-8b09-95a71063c963', 'en', 'source credibility', 'достоверность источника', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e043d1b-f7c7-5b40-b705-5ab73e02a420', 'en', 'citation practice', 'практика цитирования', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('315e181e-53e0-5393-9796-9e5dd8ead69a', 'en', 'integrate a quotation', 'встроить цитату', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a517021-0192-52b9-b381-551a99701506', 'en', 'paraphrase', 'перефразировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('497c212b-d9f1-55e4-8d87-161d95f2b917', 'en', 'research question', 'исследовательский вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5acfff6d-5d95-5faa-925e-fc73e2344c34', 'en', 'peer-reviewed source', 'рецензируемый источник', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1394531b-1c2a-5c20-8b09-95a71063c963', 'en', 'source credibility', 'достоверность источника', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e043d1b-f7c7-5b40-b705-5ab73e02a420', 'en', 'citation practice', 'практика цитирования', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('315e181e-53e0-5393-9796-9e5dd8ead69a', 'en', 'integrate a quotation', 'встроить цитату', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a517021-0192-52b9-b381-551a99701506', 'en', 'paraphrase', 'перефразировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf42b8d0-263c-5a1e-be0c-913905c213ca', 'en', 'conflict of interest', 'конфликт интересов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '91b1669c-58d1-5e16-bf6e-7096276ff09d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'research question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '91b1669c-58d1-5e16-bf6e-7096276ff09d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'peer-reviewed source' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '91b1669c-58d1-5e16-bf6e-7096276ff09d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'source credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '91b1669c-58d1-5e16-bf6e-7096276ff09d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'citation practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '91b1669c-58d1-5e16-bf6e-7096276ff09d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'integrate a quotation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '91b1669c-58d1-5e16-bf6e-7096276ff09d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '91b1669c-58d1-5e16-bf6e-7096276ff09d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '78b1fe6a-94d3-518c-b104-7e45195ce88b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'research question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '78b1fe6a-94d3-518c-b104-7e45195ce88b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'peer-reviewed source' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '78b1fe6a-94d3-518c-b104-7e45195ce88b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'source credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '78b1fe6a-94d3-518c-b104-7e45195ce88b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'citation practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '78b1fe6a-94d3-518c-b104-7e45195ce88b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'integrate a quotation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '78b1fe6a-94d3-518c-b104-7e45195ce88b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, '78b1fe6a-94d3-518c-b104-7e45195ce88b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, 'f9944084-2f9e-588e-b6ff-22ce036b3071', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'research question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, 'f9944084-2f9e-588e-b6ff-22ce036b3071', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'peer-reviewed source' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, 'f9944084-2f9e-588e-b6ff-22ce036b3071', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'source credibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, 'f9944084-2f9e-588e-b6ff-22ce036b3071', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'citation practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, 'f9944084-2f9e-588e-b6ff-22ce036b3071', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'integrate a quotation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, 'f9944084-2f9e-588e-b6ff-22ce036b3071', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1f460f33-ce19-59db-8583-ab4c1e2e0515', id, 'f9944084-2f9e-588e-b6ff-22ce036b3071', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict of interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
