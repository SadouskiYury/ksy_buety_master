FactoryBot.define do
  factory :admin do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 3, max_length: 20) }
  end
end
