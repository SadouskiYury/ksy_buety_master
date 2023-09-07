# frozen_string_literal: true

FactoryBot.define do
  factory :contact do
    link { "https://example.com" }
    phone_number { "+1234567890" }
    note { "Sample note" }
    master factory: %i[master]
  end
end
