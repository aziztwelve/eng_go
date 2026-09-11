-- Track: B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('36a06e16-6cac-5840-a27b-dc287404215b', 'B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS', 'Совместные проекты и академические презентации', 'Развивайте самостоятельные академические навыки уровня B2 по теме «Совместные проекты и академические презентации»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы.', '{"en":"Collaborative Projects and Academic Presentations","ru":"Совместные проекты и академические презентации"}'::jsonb, '{"en":"Develop independent B2 academic skills for collaborative projects and academic presentations by analysing requirements and evidence, synthesising ideas, and producing precise responses.","ru":"Развивайте самостоятельные академические навыки уровня B2 по теме «Совместные проекты и академические презентации»: анализируйте требования и доказательства, синтезируйте идеи и создавайте точные ответы."}'::jsonb, 'en', 'B2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1aad4939-2283-541a-904a-732450b16bee', NULL, 'Понятия и академическая точность', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Managing Collaboration","ru":"Понятия и академическая точность"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e3fd27d-2158-5e8b-abd4-e4401157e363', '1aad4939-2283-541a-904a-732450b16bee', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D01","left":"division of responsibilities","right":"распределение обязанностей"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D02","left":"accountability mechanism","right":"механизм ответственности"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D03","left":"resolve disagreement","right":"разрешить разногласие"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D04","left":"visual hierarchy","right":"визуальная иерархия"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D05","left":"signpost a presentation","right":"обозначать структуру презентации"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D06","left":"anticipate a question","right":"предвидеть вопрос"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D07","left":"respond concisely","right":"отвечать кратко"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee8e8608-b195-53ee-97d6-c4a9725b3421', '1aad4939-2283-541a-904a-732450b16bee', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D08","is_correct":true,"text":"A clear division of responsibilities should reflect each member’s strengths while preserving collective accountability for the final product."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f981f431-9562-5cfe-aeed-f12bdce170d3', '1aad4939-2283-541a-904a-732450b16bee', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A clear division of responsibilities should reflect each member’s strengths while preserving collective accountability for the final product.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чёткое распределение обязанностей должно учитывать сильные стороны каждого участника, сохраняя коллективную ответственность за итоговый продукт.","target_language":"en","word_bank":["A","clear","division","of","responsibilities","should","reflect","each","member’s","strengths","while","preserving","collective","accountability","for","the","final","product","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01eff13a-39ad-5ddb-894f-bc5bf46119b7', '1aad4939-2283-541a-904a-732450b16bee', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"division of responsibilities","instruction":"Выберите подходящее слово.","options":["division of responsibilities","visual hierarchy","anticipate a question"],"sentence_template":"A clear ___ should reflect each member’s strengths while preserving collective accountability for the final product."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f74ff5f-5371-5bc5-8e0b-56a2280d66c6', '1aad4939-2283-541a-904a-732450b16bee', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","clear","division","of","responsibilities","should","reflect","each","member’s","strengths","while","preserving","collective","accountability","for","the","final","product","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","product","final","the","for","accountability","collective","preserving","while","strengths","member’s","each","reflect","should","responsibilities","of","division","clear","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f8d49d2-4a91-5644-b668-f97c40285de7', '1aad4939-2283-541a-904a-732450b16bee', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A clear division of responsibilities should reflect each member’s strengths while preserving collective accountability for the final product. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb01fea6-7e20-5e90-9ca7-9e323bf0a708', '1aad4939-2283-541a-904a-732450b16bee', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A clear division of responsibilities should reflect each member’s strengths while preserving collective accountability for the final product. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чёткое распределение обязанностей должно учитывать сильные стороны каждого участника, сохраняя коллективную ответственность за итоговый продукт. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('713f8bfd-f965-59e2-800d-7305054c5da2', '1aad4939-2283-541a-904a-732450b16bee', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"A clear division of responsibilities should reflect each member’s strengths while preserving collective accountability for the final product.","translation":"Чёткое распределение обязанностей должно учитывать сильные стороны каждого участника, сохраняя коллективную ответственность за итоговый продукт.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Managing Collaboration"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ca9e76b-9f2c-53e6-84b8-1b17fb8d7708', '1aad4939-2283-541a-904a-732450b16bee', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“division of responsibilities” means the allocation of tasks among team members.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D11","is_correct":true,"text":"the allocation of tasks among team members"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D12","is_correct":false,"text":"a process ensuring people complete agreed work"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D13","is_correct":false,"text":"reach a workable outcome after a difference of opinion"}],"word":"division of responsibilities"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f9c5d54-bb1a-507a-9d60-987eb7407735', '1aad4939-2283-541a-904a-732450b16bee', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A clear division of responsibilities should reflect each member’s strengths while preserving collective accountability for the final product.","explanation":"The missing academic expression is “division of responsibilities”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"division of responsibilities","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D14","is_correct":true},{"audio_text":"resolve disagreement","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D15","is_correct":false},{"audio_text":"signpost a presentation","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D16","is_correct":false}],"sentence_template":"A clear ___ should reflect each member’s strengths while preserving collective accountability for the final product."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fff8cca6-c238-5b50-b115-30f8656a3630', '1aad4939-2283-541a-904a-732450b16bee', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"division of responsibilities","explanation":"The complete academic statement uses “division of responsibilities” precisely.","hint_prefix":"divi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A clear ___ should reflect each member’s strengths while preserving collective accountability for the final product."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe1b6993-16b1-5e55-a019-51879a5af742', '1aad4939-2283-541a-904a-732450b16bee', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"division of responsibilities","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D17","text":"division of responsibilities"},{"audio_text":"accountability mechanism","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D18","text":"accountability mechanism"},{"audio_text":"resolve disagreement","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D19","text":"resolve disagreement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e2704ae-5865-5c51-a4fa-6a88e48e07ad', '1aad4939-2283-541a-904a-732450b16bee', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Managing Collaboration”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D20","is_correct":true,"text":"A clear division of responsibilities should reflect each member’s strengths while preserving collective accountability for the final product."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L1_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36a06e16-6cac-5840-a27b-dc287404215b', '1aad4939-2283-541a-904a-732450b16bee', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('63988edb-054d-52c7-95af-7e0f14211d34', NULL, 'Анализ и применение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Designing a Clear Presentation","ru":"Анализ и применение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b194388-5743-5d21-8003-7765311a90ca', '63988edb-054d-52c7-95af-7e0f14211d34', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D01","left":"division of responsibilities","right":"распределение обязанностей"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D02","left":"accountability mechanism","right":"механизм ответственности"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D03","left":"resolve disagreement","right":"разрешить разногласие"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D04","left":"visual hierarchy","right":"визуальная иерархия"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D05","left":"signpost a presentation","right":"обозначать структуру презентации"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D06","left":"anticipate a question","right":"предвидеть вопрос"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D07","left":"respond concisely","right":"отвечать кратко"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e31b03b9-3ee6-5a47-b199-d66dcc6aaeaa', '63988edb-054d-52c7-95af-7e0f14211d34', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D08","is_correct":true,"text":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21f16842-e4e2-581b-bee0-7956a26b5e4d', '63988edb-054d-52c7-95af-7e0f14211d34', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эффективные слайды используют визуальную иерархию для усиления устного аргумента, а не воспроизводят каждое предложение выступающего.","target_language":"en","word_bank":["Effective","slides","use","visual","hierarchy","to","reinforce","the","spoken","argument","rather","than","reproduce","every","sentence","presented","by","the","speaker","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45341137-cba3-570e-b8b4-0098bf138707', '63988edb-054d-52c7-95af-7e0f14211d34', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"accountability mechanism","instruction":"Выберите подходящее слово.","options":["accountability mechanism","signpost a presentation","respond concisely"],"sentence_template":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b986c34e-13db-5d8a-a4c2-d5322e6d59e5', '63988edb-054d-52c7-95af-7e0f14211d34', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Effective","slides","use","visual","hierarchy","to","reinforce","the","spoken","argument","rather","than","reproduce","every","sentence","presented","by","the","speaker","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","speaker","the","by","presented","sentence","every","reproduce","than","rather","argument","spoken","the","reinforce","to","hierarchy","visual","use","slides","Effective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30a9974a-8797-59ff-a861-e9e579033e66', '63988edb-054d-52c7-95af-7e0f14211d34', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee78dd8e-81fc-582d-ac1a-c049fa97a50d', '63988edb-054d-52c7-95af-7e0f14211d34', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Эффективные слайды используют визуальную иерархию для усиления устного аргумента, а не воспроизводят каждое предложение выступающего. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95f9df00-d655-535a-b81f-5bdf2906ce65', '63988edb-054d-52c7-95af-7e0f14211d34', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker.","translation":"Эффективные слайды используют визуальную иерархию для усиления устного аргумента, а не воспроизводят каждое предложение выступающего.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Designing a Clear Presentation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e3dc7d7-5e97-5603-9507-18da13198ae0', '63988edb-054d-52c7-95af-7e0f14211d34', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“accountability mechanism” means a process ensuring people complete agreed work.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D11","is_correct":true,"text":"a process ensuring people complete agreed work"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D12","is_correct":false,"text":"reach a workable outcome after a difference of opinion"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D13","is_correct":false,"text":"the arrangement of visual elements by importance"}],"word":"accountability mechanism"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79c8fbad-fa84-52d9-b4f4-ab9b2c464acc', '63988edb-054d-52c7-95af-7e0f14211d34', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker.","explanation":"The missing academic expression is “accountability mechanism”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"accountability mechanism","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D14","is_correct":true},{"audio_text":"visual hierarchy","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D15","is_correct":false},{"audio_text":"anticipate a question","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D16","is_correct":false}],"sentence_template":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb6d38e9-31b4-55fd-a829-97c9a865754a', '63988edb-054d-52c7-95af-7e0f14211d34', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"accountability mechanism","explanation":"The complete academic statement uses “accountability mechanism” precisely.","hint_prefix":"acco","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a69c4fb0-03dd-57e8-b3b6-c9e7802e8986', '63988edb-054d-52c7-95af-7e0f14211d34', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"division of responsibilities","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D17","text":"division of responsibilities"},{"audio_text":"accountability mechanism","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D18","text":"accountability mechanism"},{"audio_text":"resolve disagreement","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D19","text":"resolve disagreement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72b5e8bf-2dd3-5d5a-bb29-e596acc0e7ba', '63988edb-054d-52c7-95af-7e0f14211d34', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Designing a Clear Presentation”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D20","is_correct":true,"text":"Effective slides use visual hierarchy to reinforce the spoken argument rather than reproduce every sentence presented by the speaker."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L2_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36a06e16-6cac-5840-a27b-dc287404215b', '63988edb-054d-52c7-95af-7e0f14211d34', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('69daaf79-f7f1-5678-a7f6-4691e7f85977', NULL, 'Самостоятельное выполнение', 'Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения.', '{"en":"Handling Audience Questions","ru":"Самостоятельное выполнение"}'::jsonb, '{"en":"Complete a complex B2 study task independently by critically analysing information, using academic vocabulary precisely, and justifying decisions.","ru":"Самостоятельно выполнять сложную учебную задачу уровня B2, критически анализируя информацию, точно используя академическую лексику и обосновывая решения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('613a635b-1f0c-5600-9d22-ed3859abff9b', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D01","left":"division of responsibilities","right":"распределение обязанностей"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D02","left":"accountability mechanism","right":"механизм ответственности"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D03","left":"resolve disagreement","right":"разрешить разногласие"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D04","left":"visual hierarchy","right":"визуальная иерархия"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D05","left":"signpost a presentation","right":"обозначать структуру презентации"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D06","left":"anticipate a question","right":"предвидеть вопрос"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D07","left":"respond concisely","right":"отвечать кратко"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b099c742-3b4b-578e-bc78-ef6c2421e291', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option uses precise B2 academic language and explains a logical relationship between evidence, method, and outcome.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D08","is_correct":true,"text":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D09","is_correct":false,"text":"The first available answer should be accepted without examining its evidence."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D10","is_correct":false,"text":"Academic requirements are optional when a writer has a strong personal opinion."}],"question":"Which statement demonstrates the strongest academic reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('951be4ef-d68d-57f2-84c7-0bf2196d3951', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Отвечая на вопросы, прямо признайте поднятый вопрос, ответьте кратко и честно объясните, когда потребуются дополнительные доказательства.","target_language":"en","word_bank":["When","answering","questions",",","acknowledge","the","issue","directly",",","respond","concisely",",","and","explain","honestly","when","further","evidence","would","be","required","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('856c3787-601b-5b53-b2b2-052868566c39', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"resolve disagreement","instruction":"Выберите подходящее слово.","options":["resolve disagreement","anticipate a question","division of responsibilities"],"sentence_template":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13e8a76a-5d2f-5578-9315-956a924d383e', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","answering","questions",",","acknowledge","the","issue","directly",",","respond","concisely",",","and","explain","honestly","when","further","evidence","would","be","required","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","required","be","would","evidence","further","when","honestly","explain","and",",","concisely","respond",",","directly","issue","the","acknowledge",",","questions","answering","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb7b2447-d168-55be-8827-cf5c77979e68', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required. This approach should be evaluated against the task requirements and the quality of the available evidence.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bc12b8c-8b42-57d6-8ac0-4f39cf40ed8a', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required. This approach should be evaluated against the task requirements and the quality of the available evidence. Before reaching a conclusion, distinguish the central claim from supporting examples and acknowledge any significant limitation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Отвечая на вопросы, прямо признайте поднятый вопрос, ответьте кратко и честно объясните, когда потребуются дополнительные доказательства. Этот подход следует оценить с учётом требований задания и качества имеющихся доказательств. Прежде чем делать вывод, отделите основной тезис от подтверждающих примеров и признайте любое существенное ограничение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a275ce8-3945-5859-8437-f676eff2eec2', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tutor","text":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required.","translation":"Отвечая на вопросы, прямо признайте поднятый вопрос, ответьте кратко и честно объясните, когда потребуются дополнительные доказательства.","type":"dialogue"},{"character":"Student","text":"How can I demonstrate that analysis rather than merely repeat the source?","translation":"Как мне продемонстрировать анализ, а не просто повторить источник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Compare the claim with relevant evidence, explain the relationship, and evaluate an important limitation."},{"is_correct":false,"text":"Copy the source’s conclusion and add that it is obviously correct."}],"text":"Which strategy is academically stronger?","type":"choice"}],"title":"Handling Audience Questions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abff5510-160b-5d27-8e48-366f4c9eb2cd', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“resolve disagreement” means reach a workable outcome after a difference of opinion.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D11","is_correct":true,"text":"reach a workable outcome after a difference of opinion"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D12","is_correct":false,"text":"the arrangement of visual elements by importance"},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D13","is_correct":false,"text":"use language to guide an audience through a talk"}],"word":"resolve disagreement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a50729a5-977c-51db-badd-348cabef5469', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required.","explanation":"The missing academic expression is “resolve disagreement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"resolve disagreement","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D14","is_correct":true},{"audio_text":"signpost a presentation","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D15","is_correct":false},{"audio_text":"respond concisely","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D16","is_correct":false}],"sentence_template":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a63de827-1e35-5f9b-b8da-3cecd977f6b4', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"resolve disagreement","explanation":"The complete academic statement uses “resolve disagreement” precisely.","hint_prefix":"reso","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d463f4ea-3d80-5262-8813-c3c1538e1433', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 academic expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"division of responsibilities","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D17","text":"division of responsibilities"},{"audio_text":"accountability mechanism","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D18","text":"accountability mechanism"},{"audio_text":"resolve disagreement","id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D19","text":"resolve disagreement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1452d9d-d458-5c76-9aaf-7d56db115143', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach the task “Handling Audience Questions”?"}],"explanation":"The correct response demonstrates independent B2 study skills through precise analysis, evidence, and justified academic decision-making.","instruction":"Ответьте.","options":[{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D20","is_correct":true,"text":"When answering questions, acknowledge the issue directly, respond concisely, and explain honestly when further evidence would be required."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D21","is_correct":false,"text":"I would ignore the criteria and submit the first draft without reviewing it."},{"id":"B2_STUDY_COLLABORATIVE_PROJECTS_AND_ACADEMIC_PRESENTATIONS_L3_D22","is_correct":false,"text":"Evidence is unnecessary because academic conclusions depend entirely on preference."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('36a06e16-6cac-5840-a27b-dc287404215b', '69daaf79-f7f1-5678-a7f6-4691e7f85977', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b840ca6-c11f-5f4d-8213-7e10f9a2f8f9', 'en', 'division of responsibilities', 'распределение обязанностей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('192503c3-5cde-55aa-8330-6a579b3bceb3', 'en', 'accountability mechanism', 'механизм ответственности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fb6cc29-6aa6-5658-a517-9f78fb7021ee', 'en', 'resolve disagreement', 'разрешить разногласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5907e63d-c5f8-57f7-95ab-2fd58274bd31', 'en', 'visual hierarchy', 'визуальная иерархия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13b3d80e-97d9-502b-a8e4-cb201f651af7', 'en', 'signpost a presentation', 'обозначать структуру презентации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('217c7cba-6581-5a2c-9784-4e12b9cf286f', 'en', 'anticipate a question', 'предвидеть вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb93754b-fa87-57dd-b5ae-0baef115d51b', 'en', 'respond concisely', 'отвечать кратко', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b840ca6-c11f-5f4d-8213-7e10f9a2f8f9', 'en', 'division of responsibilities', 'распределение обязанностей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('192503c3-5cde-55aa-8330-6a579b3bceb3', 'en', 'accountability mechanism', 'механизм ответственности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fb6cc29-6aa6-5658-a517-9f78fb7021ee', 'en', 'resolve disagreement', 'разрешить разногласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5907e63d-c5f8-57f7-95ab-2fd58274bd31', 'en', 'visual hierarchy', 'визуальная иерархия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13b3d80e-97d9-502b-a8e4-cb201f651af7', 'en', 'signpost a presentation', 'обозначать структуру презентации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('217c7cba-6581-5a2c-9784-4e12b9cf286f', 'en', 'anticipate a question', 'предвидеть вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb93754b-fa87-57dd-b5ae-0baef115d51b', 'en', 'respond concisely', 'отвечать кратко', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b840ca6-c11f-5f4d-8213-7e10f9a2f8f9', 'en', 'division of responsibilities', 'распределение обязанностей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('192503c3-5cde-55aa-8330-6a579b3bceb3', 'en', 'accountability mechanism', 'механизм ответственности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fb6cc29-6aa6-5658-a517-9f78fb7021ee', 'en', 'resolve disagreement', 'разрешить разногласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5907e63d-c5f8-57f7-95ab-2fd58274bd31', 'en', 'visual hierarchy', 'визуальная иерархия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13b3d80e-97d9-502b-a8e4-cb201f651af7', 'en', 'signpost a presentation', 'обозначать структуру презентации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('217c7cba-6581-5a2c-9784-4e12b9cf286f', 'en', 'anticipate a question', 'предвидеть вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb93754b-fa87-57dd-b5ae-0baef115d51b', 'en', 'respond concisely', 'отвечать кратко', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '1aad4939-2283-541a-904a-732450b16bee', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'division of responsibilities' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '1aad4939-2283-541a-904a-732450b16bee', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '1aad4939-2283-541a-904a-732450b16bee', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '1aad4939-2283-541a-904a-732450b16bee', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'visual hierarchy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '1aad4939-2283-541a-904a-732450b16bee', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'signpost a presentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '1aad4939-2283-541a-904a-732450b16bee', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'anticipate a question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '1aad4939-2283-541a-904a-732450b16bee', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond concisely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '63988edb-054d-52c7-95af-7e0f14211d34', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'division of responsibilities' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '63988edb-054d-52c7-95af-7e0f14211d34', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '63988edb-054d-52c7-95af-7e0f14211d34', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '63988edb-054d-52c7-95af-7e0f14211d34', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'visual hierarchy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '63988edb-054d-52c7-95af-7e0f14211d34', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'signpost a presentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '63988edb-054d-52c7-95af-7e0f14211d34', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'anticipate a question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '63988edb-054d-52c7-95af-7e0f14211d34', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond concisely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '69daaf79-f7f1-5678-a7f6-4691e7f85977', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'division of responsibilities' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '69daaf79-f7f1-5678-a7f6-4691e7f85977', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '69daaf79-f7f1-5678-a7f6-4691e7f85977', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '69daaf79-f7f1-5678-a7f6-4691e7f85977', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'visual hierarchy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '69daaf79-f7f1-5678-a7f6-4691e7f85977', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'signpost a presentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '69daaf79-f7f1-5678-a7f6-4691e7f85977', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'anticipate a question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '36a06e16-6cac-5840-a27b-dc287404215b', id, '69daaf79-f7f1-5678-a7f6-4691e7f85977', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond concisely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
