FactoryBot.define do
  factory :note do
    title { "MyString" }
    body { "MyText" }
    date { "2021-11-07 10:12:09" }
    priority { false }
    user { nil }
  end
end
