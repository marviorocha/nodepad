FactoryBot.define do
  factory :user do
    first_name { 'Neymar' }
    last_name { 'Jr' }
    email { 'neymar@example.com' }
    password { '12345678' }

    after(:create) { |user| user.confirm }
  end
end
