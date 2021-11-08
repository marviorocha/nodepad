FactoryBot.define do
  factory :note do
    title { Faker::Hacker.say_something_smart }
    body { Faker::Lorem.paragraphs }
    date { Date.time.now }
    priority { 'hight' }
    user
  end
end
