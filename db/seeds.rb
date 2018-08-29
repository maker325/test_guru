categories = Category.create!([
                                { title: 'Frontend' },
                                { title: 'Backend' },
                                { title: 'Machine Learning' }
                              ])

users = User.create!([
                       { first_name: 'Юрий', last_name: 'Петров', email: 'YuriPetrov@gmail.com' }
                     ])

tests = Test.create!([
                       { title: 'Ruby on Rails', level: 2, author_id: users[0].id, category_id: categories[1].id },
                       { title: 'NodeJS', level: 2, author_id: users[0].id, category_id: categories[1].id },
                       { title: 'Python', level: 1, author_id: users[0].id, category_id: categories[2].id },
                       { title: 'Javascript', level: 1, author_id: users[0].id, category_id: categories[0].id }
                     ])

questions = Question.create!([
                               { body: 'Зачем нужен Ruby on Rails?', test_id: tests[0].id },
                               { body: 'Зачем нужен NodeJS?', test_id: tests[1].id },
                               { body: 'Зачем нужен Python?', test_id: tests[2].id },
                               { body: 'Зачем нужен Javascript?', test_id: tests[3].id }
                             ])

Answer.create!([
                 { body: 'Правильный ответ', correct: true, question_id: questions[0].id },
                 { body: 'Неправильный ответ 1', question_id: questions[0].id },
                 { body: 'Неправильный ответ 2', question_id: questions[0].id },
                 { body: 'Правильный ответ', correct: true, question_id: questions[1].id },
                 { body: 'Неправильный ответ 1', question_id: questions[1].id },
                 { body: 'Неправильный ответ 2', question_id: questions[1].id },
                 { body: 'Правильный ответ', correct: true, question_id: questions[2].id },
                 { body: 'Неправильный ответ 1', question_id: questions[2].id },
                 { body: 'Неправильный ответ 2', question_id: questions[2].id },
                 { body: 'Правильный ответ', correct: true, question_id: questions[3].id },
                 { body: 'Неправильный ответ 1', question_id: questions[3].id },
                 { body: 'Неправильный ответ 2', question_id: questions[3].id }
               ])

TestPassage.create!([
                      { user_id: users[0].id, test_id: tests[0].id },
                      { user_id: users[0].id, test_id: tests[1].id },
                      { user_id: users[0].id, test_id: tests[2].id },
                      { user_id: users[0].id, test_id: tests[3].id }
                    ])
