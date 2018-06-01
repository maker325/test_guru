# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([{ title: 'Programm languages' }, { title: 'Servers' }])

Test.create([{ title: 'Ruby', level: 3, category_id: 1 }, { title: 'Python', level: 3, category_id: 1 }, { title: 'Ubuntu', level: 1, category_id: 2 }])
Question.create([{ body: 'Basics of programing on Python', test_id: 2 }, { body: 'The Ruby Way', test_id: 1 }, { body: 'Ubuntu Deployment', test_id: 3 }])
Answer.create([{ body: 'I dont know', question_id: 1, correct: false, user_id: 1 }, { body: 'Less time - more profit', question_id: 2, correct: true, user_id: 1 }, { body: 'I don\'t mind how to do this', question_id: 1, correct: false, user_id: 1 }])
User.create(name: 'Maker')
