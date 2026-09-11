-- Track: A2_STUDY_UNDERSTANDING_INSTRUCTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('242d09b4-deb8-5472-bedf-28df056beaff', 'A2_STUDY_UNDERSTANDING_INSTRUCTIONS', 'Понимание инструкций', 'Развивайте учебные навыки уровня A2 по теме «Понимание инструкций».', '{"en":"Understanding Instructions","ru":"Понимание инструкций"}'::jsonb, '{"en":"Develop A2 study skills for understanding instructions.","ru":"Развивайте учебные навыки уровня A2 по теме «Понимание инструкций»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('31657dc9-44ec-5382-8948-9e16e27c3976', NULL, 'Инструкции на занятии', 'Понимать учебные инструкции, используя past simple и present perfect.', '{"en":"Instructions in Class","ru":"Инструкции на занятии"}'::jsonb, '{"en":"Understand study instructions using past simple and present perfect.","ru":"Понимать учебные инструкции, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('155fed93-bdde-59bd-9b7e-bcf1042e1b94', '31657dc9-44ec-5382-8948-9e16e27c3976', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to hand in","right":"сдать (работу)"},{"id":"P2","left":"word limit","right":"лимит слов"},{"id":"P3","left":"to underline","right":"подчеркнуть"},{"id":"P4","left":"in pairs","right":"в парах"},{"id":"P5","left":"to refer to","right":"сослаться на"},{"id":"P6","left":"rubric","right":"критерии оценки"},{"id":"P7","left":"due date","right":"крайний срок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('858364e7-b65b-5fcb-873e-e09d92203f9c', '31657dc9-44ec-5382-8948-9e16e27c3976', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The teacher has explained the rubric twice already.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The teacher has explained the rubric twice already."},{"id":"Q_B","is_correct":false,"text":"The teacher has explained it last lesson."},{"id":"Q_C","is_correct":false,"text":"The teacher explain the rubric already twice."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8ce0f48-480b-5f1e-a723-eee6f6ac2b5d', '31657dc9-44ec-5382-8948-9e16e27c3976', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The teacher explained the rubric and has asked us to hand in the essay by Friday.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Преподаватель объяснил критерии и попросил сдать работу к пятнице.","target_language":"en","word_bank":["to","The","teacher","us","asked","tomorrow","did","rubric","in","the","explained","by","has","the","and","explain","Friday.","essay","hand"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c335b0e5-435b-55c1-861f-d285656f2099', '31657dc9-44ec-5382-8948-9e16e27c3976', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"in pairs","instruction":"Выберите подходящее слово.","options":["in pairs","in pair","pairing"],"sentence_template":"We worked ___ in the last session.","translation_hint":"На прошлом занятии мы работали в парах."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e038315-1680-56e8-9bd4-779c9ab60abb', '31657dc9-44ec-5382-8948-9e16e27c3976', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Have","you","read","the","instructions","to","the","end?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["read","the","Have","end?","was","to","did","instructions","you","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b26f259-29a1-5a40-ba05-6af6163828e5', '31657dc9-44ec-5382-8948-9e16e27c3976', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The task says ''underline the topic sentences and refer to paragraph two'' — the due date is Monday, and the word limit is two hundred.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3be63a37-12b1-5981-88ef-4b26d5ea293e', '31657dc9-44ec-5382-8948-9e16e27c3976', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The task says ''underline the topic sentences and refer to paragraph two'' — the due date is Monday, and the word limit is two hundred.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В задании сказано: «подчеркните тематические предложения и сошлитесь на второй абзац» — крайний срок понедельник, лимит слов двести."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ddaf25e-e7e1-532e-bd02-da61da0f5b9b', '31657dc9-44ec-5382-8948-9e16e27c3976', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"What exactly do we have to do for Monday?","translation":"Что именно нужно сделать к понедельнику?","type":"dialogue"},{"character":"Voice 2","text":"Underline the arguments and refer to the rubric — the teacher has posted it online.","translation":"Подчеркнуть аргументы и ориентироваться на критерии — преподаватель выложил их онлайн.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Is there a word limit this time?"},{"is_correct":false,"text":"Is there a limit tomorrow yesterday?"},{"is_correct":false,"text":"Is Monday underlining our arguments?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"The Assignment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e95496a-9e17-52e8-81c9-28675657ea98', '31657dc9-44ec-5382-8948-9e16e27c3976', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“rubric” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The list of criteria used to grade your work"},{"id":"D_B","is_correct":false,"text":"The title you give your essay"},{"id":"D_C","is_correct":false,"text":"The deadline printed on the task sheet"}],"word":"rubric"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0e9c6fc-6508-5acb-84f7-6d3a656b88c5', '31657dc9-44ec-5382-8948-9e16e27c3976', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have handed in my homework already.","explanation":"The missing word is “handed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"handed","id":"LW_A","is_correct":true},{"audio_text":"hand","id":"LW_B","is_correct":false},{"audio_text":"handing","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ in my homework already."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1acb79a5-4182-5ec9-a66b-039d29be551d', '31657dc9-44ec-5382-8948-9e16e27c3976', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"due","explanation":"The complete sentence is “The due date is the twelfth.”.","hint_prefix":"du","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ date is the twelfth."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1fde72a-5f5b-57f8-8dd8-bf365ceb4e43', '31657dc9-44ec-5382-8948-9e16e27c3976', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to hand in","id":"V1","text":"to hand in"},{"audio_text":"word limit","id":"V2","text":"word limit"},{"audio_text":"to underline","id":"V3","text":"to underline"},{"audio_text":"in pairs","id":"V4","text":"in pairs"},{"audio_text":"to refer to","id":"V5","text":"to refer to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57e2d38c-382b-54ba-9555-56648f13a750', '31657dc9-44ec-5382-8948-9e16e27c3976', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Any questions about the task?"}],"explanation":"“Yes — should we work in pairs, or is it an individual assignment?” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — should we work in pairs, or is it an individual assignment?"},{"id":"C_B","is_correct":false,"text":"I asked it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The task is questioning me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('242d09b4-deb8-5472-bedf-28df056beaff', '31657dc9-44ec-5382-8948-9e16e27c3976', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', NULL, 'Следующее задание', 'Понимать требования задания и сравнивать форматы.', '{"en":"The Next Assignment","ru":"Следующее задание"}'::jsonb, '{"en":"Understand assignment requirements and compare formats.","ru":"Понимать требования задания и сравнивать форматы."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86bd4149-b1ab-593b-8450-0d6aa2587285', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"requirements","right":"требования"},{"id":"P2","left":"clearer","right":"понятнее"},{"id":"P3","left":"to follow the steps","right":"следовать шагам"},{"id":"P4","left":"multiple choice","right":"множественный выбор"},{"id":"P5","left":"open question","right":"открытый вопрос"},{"id":"P6","left":"to count towards","right":"идти в зачёт (оценки)"},{"id":"P7","left":"instruction","right":"инструкция"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efad74e6-1a83-53ac-a0bb-8cb05a6d0504', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Multiple choice is quicker than an open question.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Multiple choice is quicker than an open question."},{"id":"Q_B","is_correct":false,"text":"Multiple choice is more quick than open question."},{"id":"Q_C","is_correct":false,"text":"Multiple choice is quickest than questions."}],"question":"Which sentence compares two task types correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a0b97b9-31dc-5dfb-aae3-a754e1d65458', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This time we are going to follow the instructions step by step.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В этот раз мы собираемся следовать инструкции шаг за шагом.","target_language":"en","word_bank":["to","followed","yesterday","we","did","by","follow","going","This","the","are","step.","instructions","time","step"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e38881d8-0b98-5c15-b8dd-172c409f8d10', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"counts","instruction":"Выберите подходящее слово.","options":["counts","count","counting"],"sentence_template":"The presentation ___ towards the final grade.","translation_hint":"Презентация идёт в зачёт итоговой оценки."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f946b07-d23e-5e2b-88e9-6e3a56d6aada', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","are","going","to","add","a","listening","section."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["to","listening","They","are","a","section.","did","going","was","add"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a8c268f-7668-5707-80d2-b9c0d3bc1cb5', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you read the requirements twice before starting, you will not redo the task from the beginning.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5763557e-44e0-5d28-a407-fa0de61fbfff', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you read the requirements twice before starting, you will not redo the task from the beginning.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если дважды прочитать требования до начала, не придётся переделывать работу с самого начала."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d17efbce-09c5-5986-a9ef-d067e6662296', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The brief has three pages of requirements...","translation":"В задании три страницы требований...","type":"dialogue"},{"character":"Voice 2","text":"Read the headings first — they show the steps.","translation":"Сначала прочитай заголовки — они показывают шаги.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Right — step one is choosing the topic by Wednesday."},{"is_correct":false,"text":"Step one chose me tomorrow yesterday."},{"is_correct":false,"text":"The pages are briefing the steps."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Reading the Brief"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aad7b910-04a4-590b-8e56-f1ee5ae2c6d5', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“open question” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A task where you write your own answer"},{"id":"D_B","is_correct":false,"text":"A task where you choose from given options"},{"id":"D_C","is_correct":false,"text":"A task where you match two lists"}],"word":"open question"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae3ee1b0-357a-51a1-bd34-a720aa0568c0', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to follow the steps exactly.","explanation":"The missing word is “follow”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"follow","id":"LW_A","is_correct":true},{"audio_text":"followed","id":"LW_B","is_correct":false},{"audio_text":"following","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ the steps exactly."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7dd005d4-eb08-517c-899d-230a9908db32', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"clearer","explanation":"The complete sentence is “The checklist makes everything clearer .”.","hint_prefix":"cl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The checklist makes everything ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b871ee6-8ca7-5e71-8f76-571e1e1909c0', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"requirements","id":"V1","text":"requirements"},{"audio_text":"clearer","id":"V2","text":"clearer"},{"audio_text":"to follow the steps","id":"V3","text":"to follow the steps"},{"audio_text":"multiple choice","id":"V4","text":"multiple choice"},{"audio_text":"open question","id":"V5","text":"open question"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b1f223e-3477-5cad-8edf-dd232bbbf702', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Classmate","text":"Does the essay count towards the grade?"}],"explanation":"“Yes, twenty per cent — if you read the rubric, you will see exactly how.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, twenty per cent — if you read the rubric, you will see exactly how."},{"id":"C_B","is_correct":false,"text":"It counted yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The essay is grading me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('242d09b4-deb8-5472-bedf-28df056beaff', 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('70ae2faf-9f6c-5528-9475-ec49dd02fcdc', NULL, 'Если инструкция непонятна', 'Уточнять задания, используя should и первое условное.', '{"en":"If the Instruction Is Unclear","ru":"Если инструкция непонятна"}'::jsonb, '{"en":"Clarify tasks using should and the first conditional.","ru":"Уточнять задания, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47b2a1d5-9922-5e79-8238-f098fb00141b', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to misread","right":"прочитать неверно"},{"id":"P2","left":"to ask for clarification","right":"попросить уточнение"},{"id":"P3","left":"to assume","right":"предположить"},{"id":"P4","left":"worse","right":"хуже"},{"id":"P5","left":"to waste effort","right":"потратить усилия зря"},{"id":"P6","left":"in advance","right":"заранее"},{"id":"P7","left":"to double-check","right":"перепроверить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b9b2152-8e18-5c54-8a4a-29941374e4b3', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should ask for clarification before you start writing.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should ask for clarification before you start writing."},{"id":"Q_B","is_correct":false,"text":"You should to ask it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must asking clarification last time."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94371e3c-ceac-5851-adac-4079b4463c03', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you misread the task, you will waste hours of work.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если неверно поймёшь задание, потеряешь часы работы.","target_language":"en","word_bank":["waste","misreaded","of","you","If","did","work.","will","misread","hours","the","task,","you","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76e2230d-b8cc-54e6-a79a-8c8f8b304bd3', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"message","instruction":"Выберите подходящее слово.","options":["message","will message","messaged"],"sentence_template":"If instructions are unclear, ___ the teacher directly.","translation_hint":"Если инструкция неясна, напиши преподавателю напрямую."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b8c20b1-4019-522e-9685-773b924c591c', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","never","assume","—","double-check."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["never","should","assume","mustn''t","—","went","You","double-check."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96e39877-f5a7-5099-835d-15f1e570871d', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you double-check the requirements on day one, you will not discover a missing section the night before the deadline.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36837249-8f4e-5f4b-9d0d-c4edcde125bf', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you double-check the requirements on day one, you will not discover a missing section the night before the deadline.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если перепроверить требования в первый день, не обнаружишь отсутствующий раздел накануне срока."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0a5d35d-1949-5134-800a-a55c77d574db', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I wrote a report, but the task asked for a letter — I misread one word.","translation":"Я написал отчёт, а требовалось письмо — я неверно прочитал одно слово.","type":"dialogue"},{"character":"Voice 2","text":"Ouch. Did you ask anyone before starting?","translation":"Ой. Ты спрашивал кого-нибудь до начала?","type":"dialogue"},{"options":[{"is_correct":true,"text":"No — from now on, I will double-check the format in advance."},{"is_correct":false,"text":"No, I will double-checked it yesterday."},{"is_correct":false,"text":"The word is misreading my report."}],"text":"What is the lesson?","type":"choice"}],"title":"The Wrong Format"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1bee161-917a-5379-b163-bb6ad51df537', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to assume” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To think something is true without checking"},{"id":"D_B","is_correct":false,"text":"To verify the facts with the teacher"},{"id":"D_C","is_correct":false,"text":"To read the task twice before starting"}],"word":"to assume"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fac5b30-c92b-523b-a501-93b7c9036659', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you misread the task, you lose time.","explanation":"The missing word is “misread”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"misread","id":"LW_A","is_correct":true},{"audio_text":"will misread","id":"LW_B","is_correct":false},{"audio_text":"misreaded","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the task, you lose time."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cbd3089-f145-55cd-8a3e-9872d4c3fe49', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"clarification","explanation":"The complete sentence is “Ask for clarification early, not after the deadline.”.","hint_prefix":"cla","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Ask for ___ early, not after the deadline."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74fda29e-3a66-5dcf-8c26-48835d152806', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to misread","id":"V1","text":"to misread"},{"audio_text":"to ask for clarification","id":"V2","text":"to ask for clarification"},{"audio_text":"to assume","id":"V3","text":"to assume"},{"audio_text":"worse","id":"V4","text":"worse"},{"audio_text":"to waste effort","id":"V5","text":"to waste effort"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64185984-97a4-5c38-bd38-93cce1efa40b', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I do not understand step three of the task."}],"explanation":"“Email the teacher today — if you wait till Friday, you will lose two days.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Email the teacher today — if you wait till Friday, you will lose two days."},{"id":"C_B","is_correct":false,"text":"I emailed her yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The step is tasking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('242d09b4-deb8-5472-bedf-28df056beaff', '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e431d97-64fe-57fb-addd-5b13c363da0f', 'en', 'to hand in', 'сдать (работу)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f6307d4-31d3-5932-a0b3-569ea6603290', 'en', 'word limit', 'лимит слов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d1e23ee5-7053-5f4a-9b49-3f39c583fc94', 'en', 'to underline', 'подчеркнуть', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b842a017-9a60-581d-a654-2deb2b9f632d', 'en', 'in pairs', 'в парах', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cc094e83-aeda-5afa-8d62-783f18078f22', 'en', 'to refer to', 'сослаться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('322c2346-318c-53ab-a259-f64820435343', 'en', 'rubric', 'критерии оценки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6037eab8-14c3-5aa6-974e-e815763d9809', 'en', 'due date', 'крайний срок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('895a0ec2-450f-5f5b-b3dd-f546169a474f', 'en', 'requirements', 'требования', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dec322c3-eded-524e-928d-e5d67a9ee19f', 'en', 'clearer', 'понятнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('43dc2590-a4d2-591e-9dde-94fb43b2721c', 'en', 'to follow the steps', 'следовать шагам', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9344978-32f5-5709-827a-83367d32b67c', 'en', 'multiple choice', 'множественный выбор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88875ba6-28f9-5edf-be37-97901bda4a92', 'en', 'open question', 'открытый вопрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('edeb982f-9da9-5bac-8be5-1f3861759247', 'en', 'to count towards', 'идти в зачёт (оценки)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7544a7a7-69dc-54ce-a704-895a0829c6a7', 'en', 'instruction', 'инструкция', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('301daa0b-8811-5398-895a-673f9ce02d2c', 'en', 'to misread', 'прочитать неверно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('813b25d4-7fa4-5ebf-b9f7-4a7e553e1312', 'en', 'to ask for clarification', 'попросить уточнение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30d4077f-3a4d-532a-a4c8-de2b828a040b', 'en', 'to assume', 'предположить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3cf60d71-b4f2-556c-9ce5-79b82a302127', 'en', 'worse', 'хуже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c693e524-1c44-5b11-a048-231fb50e6d80', 'en', 'to waste effort', 'потратить усилия зря', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48465a51-bb8d-5af5-beb9-23e75da4553e', 'en', 'in advance', 'заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e8fdf43-8345-58d9-b123-11f8dc1b3003', 'en', 'to double-check', 'перепроверить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '31657dc9-44ec-5382-8948-9e16e27c3976', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hand in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '31657dc9-44ec-5382-8948-9e16e27c3976', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'word limit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '31657dc9-44ec-5382-8948-9e16e27c3976', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to underline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '31657dc9-44ec-5382-8948-9e16e27c3976', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'in pairs' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '31657dc9-44ec-5382-8948-9e16e27c3976', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to refer to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '31657dc9-44ec-5382-8948-9e16e27c3976', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'rubric' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '31657dc9-44ec-5382-8948-9e16e27c3976', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'due date' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'requirements' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'clearer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to follow the steps' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'multiple choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'open question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to count towards' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, 'cd05a3c8-17c8-54cf-a8d3-8ecdcd04063c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'instruction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to misread' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to ask for clarification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to assume' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'worse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to waste effort' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '242d09b4-deb8-5472-bedf-28df056beaff', id, '70ae2faf-9f6c-5528-9475-ec49dd02fcdc', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to double-check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
