-- Track: B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e1fb760f-1a33-5bca-8905-f9a206e31dce', 'B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT', 'Академические эссе, связность и аргументация', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Академические эссе, связность и аргументация»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Academic Essays, Cohesion and Argument","ru":"Академические эссе, связность и аргументация"}'::jsonb, '{"en":"Develop independent B2 academic skills for academic essays, cohesion and argument by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Академические эссе, связность и аргументация»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3fb410cb-9068-549a-a5a4-7e9aa33dc58e', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Planning an Argument","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65b97cce-bc5e-5f3a-a725-20c8bd12e5ff', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D01","left":"thesis statement","right":"тезисное утверждение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D02","left":"topic sentence","right":"тематическое предложение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D03","left":"logical progression","right":"логическое развитие"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D04","left":"cohesive device","right":"средство связности"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D05","left":"qualify a claim","right":"уточнить утверждение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D06","left":"academic register","right":"академический стиль"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D07","left":"counterargument","right":"контраргумент"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4da59cd-5f95-5cad-a09e-0050290cb93e', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D08","is_correct":true,"text":"A thesis statement should establish a defensible position and indicate the line of reasoning that the essay will develop."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6da9c494-079b-5827-96b1-4ad3b3bff041', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A thesis statement should establish a defensible position and indicate the line of reasoning that the essay will develop.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Тезисное утверждение должно формулировать обоснованную позицию и обозначать ход рассуждения, который будет развиваться в эссе.","target_language":"en","word_bank":["A","thesis","statement","should","establish","a","defensible","position","and","indicate","the","line","of","reasoning","that","the","essay","will","develop","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6d9e2b9-85ae-5afa-a9ae-ae45baa7240b', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"thesis statement","instruction":"Выберите подходящее слово.","options":["thesis statement","cohesive device","academic register"],"sentence_template":"A ___ should establish a defensible position and indicate the line of reasoning that the essay will develop."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e490f193-d4d9-5dfc-8205-b4583ae9f7e2', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","thesis","statement","should","establish","a","defensible","position","and","indicate","the","line","of","reasoning","that","the","essay","will","develop","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","develop","will","essay","the","that","reasoning","of","line","the","indicate","and","position","defensible","a","establish","should","statement","thesis","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c46c08b9-8d89-5351-b925-eadf7699479d', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A thesis statement should establish a defensible position and indicate the line of reasoning that the essay will develop. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91239d48-38c1-5d9a-856c-43443db54590', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A thesis statement should establish a defensible position and indicate the line of reasoning that the essay will develop. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Тезисное утверждение должно формулировать обоснованную позицию и обозначать ход рассуждения, который будет развиваться в эссе. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4b0898d-1737-5f93-bae3-258d28f65a83', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A thesis statement should establish a defensible position and indicate the line of reasoning that the essay will develop.","translation":"Тезисное утверждение должно формулировать обоснованную позицию и обозначать ход рассуждения, который будет развиваться в эссе.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Planning an Argument"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53859d9d-a7a5-5f43-a284-e075c5f73573', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“thesis statement” means a sentence presenting an essay’s central position.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D11","is_correct":true,"text":"a sentence presenting an essay’s central position"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D12","is_correct":false,"text":"a sentence stating the controlling idea of a paragraph"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D13","is_correct":false,"text":"a clear sequence in which each idea follows from the previous one"}],"word":"thesis statement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('386be225-05f7-5905-a17a-d6f2cb2106db', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A thesis statement should establish a defensible position and indicate the line of reasoning that the essay will develop.","explanation":"The missing academic expression is “thesis statement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"thesis statement","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D14","is_correct":true},{"audio_text":"logical progression","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D15","is_correct":false},{"audio_text":"qualify a claim","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D16","is_correct":false}],"sentence_template":"A ___ should establish a defensible position and indicate the line of reasoning that the essay will develop."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcf49fc3-e851-5b2a-8b87-52af8e9b2374', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"thesis statement","explanation":"The complete academic statement uses “thesis statement” precisely.","hint_prefix":"thes","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should establish a defensible position and indicate the line of reasoning that the essay will develop."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c1f4a1b-d3c9-54e0-84d5-87f986c5188c', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"thesis statement","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D17","text":"thesis statement"},{"audio_text":"topic sentence","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D18","text":"topic sentence"},{"audio_text":"logical progression","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D19","text":"logical progression"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('073f0897-5e7d-51d2-bae7-ca669011d6ce', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Planning an Argument”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D20","is_correct":true,"text":"A thesis statement should establish a defensible position and indicate the line of reasoning that the essay will develop."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e1fb760f-1a33-5bca-8905-f9a206e31dce', '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('31fc839b-1c6a-5d52-b93d-62c91d3548af', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Cohesion and Paragraph Flow","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5db63d0b-f33a-500c-85ac-e32efdea6cd4', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D01","left":"thesis statement","right":"тезисное утверждение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D02","left":"topic sentence","right":"тематическое предложение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D03","left":"logical progression","right":"логическое развитие"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D04","left":"cohesive device","right":"средство связности"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D05","left":"qualify a claim","right":"уточнить утверждение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D06","left":"academic register","right":"академический стиль"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D07","left":"counterargument","right":"контраргумент"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b68df2cf-c494-529a-947a-69ce38b0febd', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D08","is_correct":true,"text":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89e67631-735a-506d-87df-cbe97a01a45f', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Логическое развитие зависит от содержательных связей между абзацами, а не просто от добавления средства связности в каждое предложение.","target_language":"en","word_bank":["Logical","progression","depends","on","meaningful","relationships","between","paragraphs",",","not","merely","on","inserting","a","cohesive","device","into","every","sentence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07993dc7-b451-560a-a019-8f0f6ab0a6a0', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"topic sentence","instruction":"Выберите подходящее слово.","options":["topic sentence","qualify a claim","counterargument"],"sentence_template":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('750b31b1-3544-5b25-bdfe-d73559a65094', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Logical","progression","depends","on","meaningful","relationships","between","paragraphs",",","not","merely","on","inserting","a","cohesive","device","into","every","sentence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","sentence","every","into","device","cohesive","a","inserting","on","merely","not",",","paragraphs","between","relationships","meaningful","on","depends","progression","Logical"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c447939e-a70d-5952-9368-f3218394dbc4', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc3909d5-cfe7-5e65-8bae-72ea9c4fe99e', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Логическое развитие зависит от содержательных связей между абзацами, а не просто от добавления средства связности в каждое предложение. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db47aecb-bc81-5e83-b56f-625fa7583f35', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence.","translation":"Логическое развитие зависит от содержательных связей между абзацами, а не просто от добавления средства связности в каждое предложение.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Cohesion and Paragraph Flow"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1e7e12d-908b-500c-b18b-4f0adde557cd', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“topic sentence” means a sentence stating the controlling idea of a paragraph.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D11","is_correct":true,"text":"a sentence stating the controlling idea of a paragraph"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D12","is_correct":false,"text":"a clear sequence in which each idea follows from the previous one"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D13","is_correct":false,"text":"language connecting ideas across sentences or paragraphs"}],"word":"topic sentence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('680b33ef-bfec-5af2-9dc7-458ef47efa42', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence.","explanation":"The missing academic expression is “topic sentence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"topic sentence","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D14","is_correct":true},{"audio_text":"cohesive device","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D15","is_correct":false},{"audio_text":"academic register","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D16","is_correct":false}],"sentence_template":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d212dbd-418b-5353-b77f-c9efa7643047', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"topic sentence","explanation":"The complete academic statement uses “topic sentence” precisely.","hint_prefix":"topi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ef0b019-e2a3-55da-907d-3c1d6a8fa583', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"thesis statement","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D17","text":"thesis statement"},{"audio_text":"topic sentence","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D18","text":"topic sentence"},{"audio_text":"logical progression","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D19","text":"logical progression"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f12d300c-19ec-54ec-8398-3798c81425b6', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Cohesion and Paragraph Flow”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D20","is_correct":true,"text":"Logical progression depends on meaningful relationships between paragraphs, not merely on inserting a cohesive device into every sentence."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e1fb760f-1a33-5bca-8905-f9a206e31dce', '31fc839b-1c6a-5d52-b93d-62c91d3548af', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('40509086-a367-549c-a7ac-28a6bd5556b2', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Editing for Academic Style","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8cc6a16b-b8b4-563c-8ed0-59857c039ccc', '40509086-a367-549c-a7ac-28a6bd5556b2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D01","left":"thesis statement","right":"тезисное утверждение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D02","left":"topic sentence","right":"тематическое предложение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D03","left":"logical progression","right":"логическое развитие"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D04","left":"cohesive device","right":"средство связности"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D05","left":"qualify a claim","right":"уточнить утверждение"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D06","left":"academic register","right":"академический стиль"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D07","left":"counterargument","right":"контраргумент"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a220815-10f9-5da3-9f2a-403f5eebc50d', '40509086-a367-549c-a7ac-28a6bd5556b2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D08","is_correct":true,"text":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea190e3d-b82f-5e06-9afd-0eead9929288', '40509086-a367-549c-a7ac-28a6bd5556b2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Авторам часто необходимо уточнить утверждение после рассмотрения контраргумента, тем самым делая вывод более точным и убедительным.","target_language":"en","word_bank":["Writers","often","need","to","qualify","a","claim","after","considering","a","counterargument",",","thereby","making","the","conclusion","more","precise","and","credible","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70d27f66-8da8-59df-b7c0-b5fb96d1c8d0', '40509086-a367-549c-a7ac-28a6bd5556b2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"logical progression","instruction":"Выберите подходящее слово.","options":["logical progression","academic register","thesis statement"],"sentence_template":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89046482-b6a7-50c6-8420-146d3bcc6949', '40509086-a367-549c-a7ac-28a6bd5556b2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Writers","often","need","to","qualify","a","claim","after","considering","a","counterargument",",","thereby","making","the","conclusion","more","precise","and","credible","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","credible","and","precise","more","conclusion","the","making","thereby",",","counterargument","a","considering","after","claim","a","qualify","to","need","often","Writers"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f251e262-7a6e-5eaa-aedd-297f2279a902', '40509086-a367-549c-a7ac-28a6bd5556b2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eff8a185-bbed-556d-9f0f-cda6d1f56ef4', '40509086-a367-549c-a7ac-28a6bd5556b2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Авторам часто необходимо уточнить утверждение после рассмотрения контраргумента, тем самым делая вывод более точным и убедительным. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('641f195e-9d57-55c1-9342-2c507a1f927d', '40509086-a367-549c-a7ac-28a6bd5556b2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible.","translation":"Авторам часто необходимо уточнить утверждение после рассмотрения контраргумента, тем самым делая вывод более точным и убедительным.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Editing for Academic Style"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b76059cf-ea51-53c7-b93f-e0773c559630', '40509086-a367-549c-a7ac-28a6bd5556b2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“logical progression” means a clear sequence in which each idea follows from the previous one.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D11","is_correct":true,"text":"a clear sequence in which each idea follows from the previous one"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D12","is_correct":false,"text":"language connecting ideas across sentences or paragraphs"},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D13","is_correct":false,"text":"limit a statement so that it is accurate and defensible"}],"word":"logical progression"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86d8099e-0068-5937-a32e-0ad64cea167b', '40509086-a367-549c-a7ac-28a6bd5556b2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible.","explanation":"The missing academic expression is “logical progression”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"logical progression","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D14","is_correct":true},{"audio_text":"qualify a claim","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D15","is_correct":false},{"audio_text":"counterargument","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D16","is_correct":false}],"sentence_template":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6008a3c3-6d6a-51a1-9539-24f6db764940', '40509086-a367-549c-a7ac-28a6bd5556b2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"logical progression","explanation":"The complete academic statement uses “logical progression” precisely.","hint_prefix":"logi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d85cca8-038c-55b9-abce-c820db9e05cb', '40509086-a367-549c-a7ac-28a6bd5556b2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"thesis statement","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D17","text":"thesis statement"},{"audio_text":"topic sentence","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D18","text":"topic sentence"},{"audio_text":"logical progression","id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D19","text":"logical progression"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f4aeace-57e9-5daa-b3da-f2de2d9f9b48', '40509086-a367-549c-a7ac-28a6bd5556b2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Editing for Academic Style”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D20","is_correct":true,"text":"Writers often need to qualify a claim after considering a counterargument, thereby making the conclusion more precise and credible."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_ACADEMIC_ESSAYS_COHESION_AND_ARGUMENT_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e1fb760f-1a33-5bca-8905-f9a206e31dce', '40509086-a367-549c-a7ac-28a6bd5556b2', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ddcf508-1cfd-5b74-9664-0e99592e60fd', 'en', 'thesis statement', 'тезисное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ef3918f-bde7-5fac-94ff-aa5f4f9d3c41', 'en', 'topic sentence', 'тематическое предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('946601d8-a2fe-5e46-a11c-120aed2dfd32', 'en', 'logical progression', 'логическое развитие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68e29210-a957-5f59-ba0e-e836c23e3d1e', 'en', 'cohesive device', 'средство связности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31082c56-1aa1-5089-8ea3-d7d82d37b8d9', 'en', 'qualify a claim', 'уточнить утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cd20500f-304e-52a3-a22c-1dbd9f96131c', 'en', 'academic register', 'академический стиль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ddcf508-1cfd-5b74-9664-0e99592e60fd', 'en', 'thesis statement', 'тезисное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ef3918f-bde7-5fac-94ff-aa5f4f9d3c41', 'en', 'topic sentence', 'тематическое предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('946601d8-a2fe-5e46-a11c-120aed2dfd32', 'en', 'logical progression', 'логическое развитие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68e29210-a957-5f59-ba0e-e836c23e3d1e', 'en', 'cohesive device', 'средство связности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31082c56-1aa1-5089-8ea3-d7d82d37b8d9', 'en', 'qualify a claim', 'уточнить утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cd20500f-304e-52a3-a22c-1dbd9f96131c', 'en', 'academic register', 'академический стиль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ddcf508-1cfd-5b74-9664-0e99592e60fd', 'en', 'thesis statement', 'тезисное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ef3918f-bde7-5fac-94ff-aa5f4f9d3c41', 'en', 'topic sentence', 'тематическое предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('946601d8-a2fe-5e46-a11c-120aed2dfd32', 'en', 'logical progression', 'логическое развитие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68e29210-a957-5f59-ba0e-e836c23e3d1e', 'en', 'cohesive device', 'средство связности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31082c56-1aa1-5089-8ea3-d7d82d37b8d9', 'en', 'qualify a claim', 'уточнить утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cd20500f-304e-52a3-a22c-1dbd9f96131c', 'en', 'academic register', 'академический стиль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'thesis statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'academic register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '3fb410cb-9068-549a-a5a4-7e9aa33dc58e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '31fc839b-1c6a-5d52-b93d-62c91d3548af', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'thesis statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '31fc839b-1c6a-5d52-b93d-62c91d3548af', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '31fc839b-1c6a-5d52-b93d-62c91d3548af', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '31fc839b-1c6a-5d52-b93d-62c91d3548af', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '31fc839b-1c6a-5d52-b93d-62c91d3548af', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '31fc839b-1c6a-5d52-b93d-62c91d3548af', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'academic register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '31fc839b-1c6a-5d52-b93d-62c91d3548af', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '40509086-a367-549c-a7ac-28a6bd5556b2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'thesis statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '40509086-a367-549c-a7ac-28a6bd5556b2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '40509086-a367-549c-a7ac-28a6bd5556b2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '40509086-a367-549c-a7ac-28a6bd5556b2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '40509086-a367-549c-a7ac-28a6bd5556b2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '40509086-a367-549c-a7ac-28a6bd5556b2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'academic register' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1fb760f-1a33-5bca-8905-f9a206e31dce', id, '40509086-a367-549c-a7ac-28a6bd5556b2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
