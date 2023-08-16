# frozen_string_literal: true

FactoryBot.define do
  factory :master do
    name { Faker::Name.name }
  end
end
