FactoryBot.define do
  factory :contact do
    link { "https://example.com" }
    phone_number { "+1234567890" }
    note { "Sample note" }
    association :master, factory: :master
  end
end
