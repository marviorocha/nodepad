# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Note.create(title: Faker::Hacker.say_something_smart, body: Faker::Lorem.paragraphs,
              date: Faker::Date.between(from: '2014-09-23', to: '2021-09-25'), user_id: 4, priority: 'low')
end

5.times do
  Note.create(title: Faker::Hacker.say_something_smart, body: Faker::Lorem.paragraphs,
              date: Faker::Date.between(from: '2014-09-23', to: '2021-09-25'), user_id: 4, priority: 'medium')
end

5.times do
  Note.create(title: Faker::Hacker.say_something_smart, body: Faker::Lorem.paragraphs,
              date: Faker::Date.between(from: '2014-09-23', to: '2021-09-25'), user_id: 4, priority: 'hight')
end
