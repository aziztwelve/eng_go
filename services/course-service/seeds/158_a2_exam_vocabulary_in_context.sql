-- Track: A2_EXAM_VOCABULARY_IN_CONTEXT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('40e37459-86e2-5a39-bb74-30c5045890a4', 'A2_EXAM_VOCABULARY_IN_CONTEXT', 'Лексика в контексте', 'Развивайте экзаменационные навыки уровня A2 по теме «Лексика в контексте».', '{"en":"Vocabulary in Context","ru":"Лексика в контексте"}'::jsonb, '{"en":"Develop A2 exam skills for vocabulary in context.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Лексика в контексте»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e1764e17-334c-5e66-a560-01c340d3167c', NULL, 'Слова в текстах', 'Работать со значением слов, используя past simple и present perfect.', '{"en":"Words in Texts","ru":"Слова в текстах"}'::jsonb, '{"en":"Work with word meanings using past simple and present perfect.","ru":"Работать со значением слов, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ece4c2e4-cfb5-580c-9f36-6e93c8e7cf77', 'e1764e17-334c-5e66-a560-01c340d3167c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"meaning in context","right":"значение в контексте"},{"id":"P2","left":"to guess","right":"догадаться"},{"id":"P3","left":"part of speech","right":"часть речи"},{"id":"P4","left":"collocation","right":"словосочетание"},{"id":"P5","left":"prefix","right":"приставка"},{"id":"P6","left":"synonym substitution","right":"подбор синонима"},{"id":"P7","left":"surrounding","right":"окружающий (контекст)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8f5a850-fadb-5487-84c7-e935e359c2d8', 'e1764e17-334c-5e66-a560-01c340d3167c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “This word has appeared in every text this week.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"This word has appeared in every text this week."},{"id":"Q_B","is_correct":false,"text":"This word has appeared yesterday."},{"id":"Q_C","is_correct":false,"text":"This word appear in texts already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('295dc94f-000a-56ed-a581-1e988c7af10c', 'e1764e17-334c-5e66-a560-01c340d3167c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"From the context I guessed that the word means ''on the contrary''.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Из контекста я догадался, что это слово означает «наоборот».","target_language":"en","word_bank":["''on","the","From","guessed","guess","means","context","the","word","contrary''.","that","tomorrow","the","did","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a81e3bac-f89f-5832-a1e2-f110b191db90', 'e1764e17-334c-5e66-a560-01c340d3167c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"prefix","instruction":"Выберите подходящее слово.","options":["prefix","prefixes","prefixion"],"sentence_template":"The word ''unfair'' has a negative ___ ''un-''.","translation_hint":"У слова ''unfair'' отрицательная приставка ''un-''."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('195b1983-caa2-5742-aef4-6748db7ef324', 'e1764e17-334c-5e66-a560-01c340d3167c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","learned","fifty","collocations","this","month."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["learned","fifty","this","was","has","did","collocations","month.","She"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e3e8cd9-e5eb-5d93-93b3-0219e58e1e8a', 'e1764e17-334c-5e66-a560-01c340d3167c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The same verb changes its meaning in different collocations: make coffee, make a mistake, make a decision.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e727e60-8b5b-532e-863a-31a1b1db635e', 'e1764e17-334c-5e66-a560-01c340d3167c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The same verb changes its meaning in different collocations: make coffee, make a mistake, make a decision.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Один и тот же глагол меняет значение в разных словосочетаниях: make coffee, make a mistake, make a decision."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f4e4a92-b909-5d1f-b561-f0548f6e2d6e', 'e1764e17-334c-5e66-a560-01c340d3167c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"What does ''sharp'' mean in ''a sharp increase''?","translation":"Что значит ''sharp'' во фразе ''a sharp increase''?","type":"dialogue"},{"character":"Voice 2","text":"Not about knives — in this context it means ''fast and sudden''.","translation":"Не про ножи — в этом контексте это значит «быстрый и резкий».","type":"dialogue"},{"options":[{"is_correct":true,"text":"So the noun decides the meaning of the adjective here."},{"is_correct":false,"text":"So ''sharp'' always means knives in every text."},{"is_correct":false,"text":"So the increase is cutting the context."}],"text":"What does Voice 1 learn?","type":"choice"}],"title":"The Meaning Task"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83b47164-0ddd-5696-8ceb-18f83fed6184', 'e1764e17-334c-5e66-a560-01c340d3167c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“collocation” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Words that naturally go together, like make a decision"},{"id":"D_B","is_correct":false,"text":"Two words with opposite meanings"},{"id":"D_C","is_correct":false,"text":"A word that came from another language"}],"word":"collocation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74fe2f67-62f3-5535-8f90-d98e9813c5f4', 'e1764e17-334c-5e66-a560-01c340d3167c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have guessed the meaning from the context.","explanation":"The missing word is “guessed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"guessed","id":"LW_A","is_correct":true},{"audio_text":"guess","id":"LW_B","is_correct":false},{"audio_text":"guessing","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the meaning from the context."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('164ece05-167b-51a8-b8be-5b61ff0c5b3a', 'e1764e17-334c-5e66-a560-01c340d3167c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"speech","explanation":"The complete sentence is “Check the part of speech first.”.","hint_prefix":"sp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Check the part of ___ first."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af01779c-71fe-5d1c-a971-b70b28332907', 'e1764e17-334c-5e66-a560-01c340d3167c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"meaning in context","id":"V1","text":"meaning in context"},{"audio_text":"to guess","id":"V2","text":"to guess"},{"audio_text":"part of speech","id":"V3","text":"part of speech"},{"audio_text":"collocation","id":"V4","text":"collocation"},{"audio_text":"prefix","id":"V5","text":"prefix"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac5a6b0e-e1b2-5808-ada5-56f3e526c4a1', 'e1764e17-334c-5e66-a560-01c340d3167c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"''Run a company'' — can you run a company?"}],"explanation":"“Yes — run has many collocations: run a company, run late, run out of money.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — run has many collocations: run a company, run late, run out of money."},{"id":"C_B","is_correct":false,"text":"I ran it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The company is running me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40e37459-86e2-5a39-bb74-30c5045890a4', 'e1764e17-334c-5e66-a560-01c340d3167c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', NULL, 'Расширяем словарь к экзамену', 'Сравнить способы учить слова и спланировать словарную работу.', '{"en":"Expanding Vocabulary for the Exam","ru":"Расширяем словарь к экзамену"}'::jsonb, '{"en":"Compare ways of learning words and plan vocabulary work.","ru":"Сравнить способы учить слова и спланировать словарную работу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb147da1-b9a2-535e-ab21-cbca962385b6', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"word family","right":"словообразовательное гнездо"},{"id":"P2","left":"more efficient","right":"эффективнее"},{"id":"P3","left":"topic lists","right":"тематические списки"},{"id":"P4","left":"spaced repetition","right":"интервальное повторение"},{"id":"P5","left":"to recycle words","right":"повторять (пущ. в оборот) слова"},{"id":"P6","left":"active vocabulary","right":"активный словарь"},{"id":"P7","left":"in chunks","right":"блоками / кусочками"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49b3f1bd-88ad-5d4d-9a2d-7e42aef2d7a9', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Learning word families is more efficient than single words.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Learning word families is more efficient than single words."},{"id":"Q_B","is_correct":false,"text":"Word families are efficienсter than words."},{"id":"Q_C","is_correct":false,"text":"Families are most efficient than single words."}],"question":"Which sentence compares two learning ways correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('017f7470-f2ac-500b-886f-72ecc724a239', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to learn words in chunks, not one by one.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь учить слова блоками, а не по одному.","target_language":"en","word_bank":["to","words","going","not","learned","yesterday","I","chunks,","learn","am","did","in","one.","by","one"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08ade862-ce14-5673-9f31-c24b3ff3ce1c', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"better","instruction":"Выберите подходящее слово.","options":["better","best","more good"],"sentence_template":"Topic lists are ___ than alphabetical ones for the exam.","translation_hint":"Тематические списки лучше алфавитных для экзамена."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cd1d8e3-b941-5d77-9add-369db7597665', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","recycle","last","month''s","words","weekly."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["going","are","weekly.","We","last","month''s","to","did","recycle","words","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0685210f-5400-526b-94c0-781bf6f1b5f7', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you recycle old words in new sentences, they will move into your active vocabulary.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('895c078f-96bd-58ed-9274-57bf4f41eee8', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you recycle old words in new sentences, they will move into your active vocabulary.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если использовать старые слова в новых предложениях, они перейдут в активный словарь."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9214a2cb-5944-5649-8473-125a61f20b66', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I have learned two hundred words this month, but I forget them in texts.","translation":"Я выучил двести слов за месяц, но в текстах их забываю.","type":"dialogue"},{"character":"Voice 2","text":"Single words or chunks with examples?","translation":"Отдельные слова или блоками с примерами?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Single words... I should switch to chunks and word families."},{"is_correct":false,"text":"Chunks — I have always learned them in families already."},{"is_correct":false,"text":"The texts are forgetting my two hundred words."}],"text":"What does Voice 1 admit?","type":"choice"}],"title":"The Word List"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84470b62-1320-58fc-b8fe-85cc568bba78', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“word family” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A group of words from one root: decide, decision, decisive"},{"id":"D_B","is_correct":false,"text":"Words that rhyme with each other"},{"id":"D_C","is_correct":false,"text":"Words listed together in one topic"}],"word":"word family"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6d1b6d2-66b1-5b04-9aec-a554c8b1a8ff', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to learn phrasal verbs in chunks.","explanation":"The missing word is “chunks”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"chunks","id":"LW_A","is_correct":true},{"audio_text":"chunk","id":"LW_B","is_correct":false},{"audio_text":"chunking","id":"LW_C","is_correct":false}],"sentence_template":"I am going to learn phrasal verbs in ___ ."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83e6e012-3532-5ca1-b380-0bf631b66e22', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more efficient","explanation":"The complete sentence is “Spaced repetition is more efficient than one-night learning.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Spaced repetition is ___ than one-night learning."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('399599af-4c4b-53df-bf9b-361a55a4e16b', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"word family","id":"V1","text":"word family"},{"audio_text":"more efficient","id":"V2","text":"more efficient"},{"audio_text":"topic lists","id":"V3","text":"topic lists"},{"audio_text":"spaced repetition","id":"V4","text":"spaced repetition"},{"audio_text":"to recycle words","id":"V5","text":"to recycle words"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01034b8d-c57e-503f-addd-f5ae95da4052', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How many words a day?"}],"explanation":"“Ten in chunks — if you recycle them weekly, they will stay for the exam.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Ten in chunks — if you recycle them weekly, they will stay for the exam."},{"id":"C_B","is_correct":false,"text":"I learned them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The words are chunking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40e37459-86e2-5a39-bb74-30c5045890a4', '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f372e6f9-55d9-531a-927b-fc09949b7a2e', NULL, 'Если слово не вспоминается', 'Разобрать словарные ошибки, используя should и первое условное.', '{"en":"If the Word Does Not Come","ru":"Если слово не вспоминается"}'::jsonb, '{"en":"Analyse vocabulary mistakes using should and the first conditional.","ru":"Разобрать словарные ошибки, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be3c5c22-ab3e-5c08-a222-39c6e67abc87', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to confuse","right":"путать"},{"id":"P2","left":"similar-looking word","right":"похожее по написанию слово"},{"id":"P3","left":"false friend","right":"ложный друг переводчика"},{"id":"P4","left":"to double the meaning","right":"проверить значение дважды"},{"id":"P5","left":"to note down","right":"записать"},{"id":"P6","left":"review","right":"повторение"},{"id":"P7","left":"context sentence","right":"предложение с контекстом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bd98d8b-9403-5d80-9558-c44436253ffe', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should learn false friends with context sentences.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should learn false friends with context sentences."},{"id":"Q_B","is_correct":false,"text":"You should to learn them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must learning friends last week."}],"question":"Which sentence gives correct vocabulary advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8b03bb3-2858-5472-9dac-2466eaec92fb', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you learn a word without context, you will easily confuse it with a similar one.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если выучить слово без контекста, легко перепутать его с похожим.","target_language":"en","word_bank":["without","word","one.","you","a","yesterday","you","context,","easily","similar","a","with","learn","did","learned","confuse","If","will","it"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c138fdf-5eda-534b-b2ef-a003182a9d1c', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"write","instruction":"Выберите подходящее слово.","options":["write","will write","wrote"],"sentence_template":"If you confuse two words, ___ them together in one notebook entry.","translation_hint":"Если путаешь два слова, запиши их вместе в одной записи."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a536baa-c8c5-5322-b17c-c11878430fcc', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","review","new","words","within","a","day."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["new","words","should","a","day.","You","mustn''t","went","review","within"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c155bc93-be2d-541d-b879-b7fc9fc2c74c', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you note down the context sentence, not just the translation, the word will return to you in the exam.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5f3289b-4fee-5d09-a431-a82d7bfdca3a', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you note down the context sentence, not just the translation, the word will return to you in the exam.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если записать предложение с контекстом, а не только перевод, слово вернётся к тебе на экзамене."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9986ac5-be2a-5c97-afd8-33f69cfe79ce', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I wrote ''magazine'' in the essay — but I meant a shop!","translation":"Я написал ''magazine'' в эссе — а имел в виду магазин!","type":"dialogue"},{"character":"Voice 2","text":"A classic false friend. What is the correct English word?","translation":"Классический ложный друг. Какое правильное английское слово?","type":"dialogue"},{"options":[{"is_correct":true,"text":"''Shop'' — and I have noted the pair down with an example sentence."},{"is_correct":false,"text":"''Magasin'' — the same word in English spelling."},{"is_correct":false,"text":"The magazine is shopping my essay."}],"text":"What does Voice 1 learn?","type":"choice"}],"title":"The False Friend"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc556aa4-6d31-57fe-8b8a-780e0a704b66', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“false friend” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A word that looks the same in two languages but means something different"},{"id":"D_B","is_correct":false,"text":"A word that is easy to translate exactly"},{"id":"D_C","is_correct":false,"text":"A synonym pair in one language"}],"word":"false friend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85270c9d-862f-5904-9bd1-e573b83df156', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you confuse similar words, study them side by side.","explanation":"The missing word is “confuse”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"confuse","id":"LW_A","is_correct":true},{"audio_text":"will confuse","id":"LW_B","is_correct":false},{"audio_text":"confused","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ similar words, study them side by side."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c3f2646-a597-5844-bb52-bdfa3ebbab9d', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"context","explanation":"The complete sentence is “Note the context sentence, not only the translation.”.","hint_prefix":"co","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Note the ___ sentence, not only the translation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d4b67cd-f831-595f-8d7b-4ab4a853bae5', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to confuse","id":"V1","text":"to confuse"},{"audio_text":"similar-looking word","id":"V2","text":"similar-looking word"},{"audio_text":"false friend","id":"V3","text":"false friend"},{"audio_text":"to double the meaning","id":"V4","text":"to double the meaning"},{"audio_text":"to note down","id":"V5","text":"to note down"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5198974-e88b-5129-9567-efd7f97b27c6', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I mix up ''receipt'' and ''recipe'' all the time."}],"explanation":"“Write them together with examples — if you see the pair, the difference will stick.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Write them together with examples — if you see the pair, the difference will stick."},{"id":"C_B","is_correct":false,"text":"I wrote them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The words are recipeting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40e37459-86e2-5a39-bb74-30c5045890a4', 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('792dacc6-a632-5950-9686-2a065ccfd8dd', 'en', 'meaning in context', 'значение в контексте', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc5563a8-9449-565c-a2a2-5f8282d6cc79', 'en', 'to guess', 'догадаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a977ec7b-b17d-585a-87cf-b2951ea2edc6', 'en', 'part of speech', 'часть речи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('feb89fa8-7431-54be-b924-cbcc82ad900e', 'en', 'collocation', 'словосочетание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81cae03b-3775-5281-ae48-dbf81f1f81e4', 'en', 'prefix', 'приставка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7df33b65-8bca-55e6-8687-5925e36aa9ef', 'en', 'synonym substitution', 'подбор синонима', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c70fbed-dfc2-5d88-9b2e-b26a4558bb30', 'en', 'surrounding', 'окружающий (контекст)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f3d0e3a-ccca-5147-bb53-1ddc8344e114', 'en', 'word family', 'словообразовательное гнездо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3f8cbaca-8ddb-5711-92be-1a21f4b7b6bf', 'en', 'more efficient', 'эффективнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('929fadef-d504-513b-9e36-437417283e17', 'en', 'topic lists', 'тематические списки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b091d71-096d-5c80-b1c3-c54a972bbb2b', 'en', 'spaced repetition', 'интервальное повторение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e441408c-7248-59f3-a06b-7cfb9b72d105', 'en', 'to recycle words', 'повторять (пущ. в оборот) слова', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('62c27d52-2c93-5eac-b640-053e6cea62e4', 'en', 'active vocabulary', 'активный словарь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84da7056-788e-5e12-aa4c-df313fb97f22', 'en', 'in chunks', 'блоками / кусочками', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f09e03dd-b218-5731-aec6-6978a987fb5d', 'en', 'to confuse', 'путать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d55dc0fc-957d-5a5b-ba9a-716d58a57ad7', 'en', 'similar-looking word', 'похожее по написанию слово', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05129fb2-ab2e-5bf5-b5a6-e8f7142ccc9e', 'en', 'false friend', 'ложный друг переводчика', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d40074c3-4d35-5ff1-b800-ba378180f41c', 'en', 'to double the meaning', 'проверить значение дважды', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cda1a85c-4d72-5954-aa03-014d64e04090', 'en', 'to note down', 'записать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d24d23d-005c-50bd-88d4-197138ab6d8e', 'en', 'review', 'повторение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b91f650c-6e17-5689-8f29-ad3afd49b05e', 'en', 'context sentence', 'предложение с контекстом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'e1764e17-334c-5e66-a560-01c340d3167c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaning in context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'e1764e17-334c-5e66-a560-01c340d3167c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to guess' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'e1764e17-334c-5e66-a560-01c340d3167c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'part of speech' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'e1764e17-334c-5e66-a560-01c340d3167c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'e1764e17-334c-5e66-a560-01c340d3167c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'prefix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'e1764e17-334c-5e66-a560-01c340d3167c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'synonym substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'e1764e17-334c-5e66-a560-01c340d3167c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'surrounding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'word family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more efficient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic lists' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'spaced repetition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to recycle words' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'active vocabulary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, '1e8cf2ab-a48b-5ef8-a84e-7f8037f58bb0', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in chunks' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to confuse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'similar-looking word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'false friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to double the meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to note down' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e37459-86e2-5a39-bb74-30c5045890a4', id, 'f372e6f9-55d9-531a-927b-fc09949b7a2e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'context sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
