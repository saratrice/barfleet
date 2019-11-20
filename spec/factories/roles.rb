FactoryBot.define do
  factory :role do
    name { "MyString" }
    description { "MyText" }
    head { false }
    division { nil }
    department { nil }
  end
end
