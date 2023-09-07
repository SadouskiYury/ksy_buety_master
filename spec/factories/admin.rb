# frozen_string_literal: true

FactoryBot.define do
  factory :admin do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6, max_length: 128) }
  end
end
