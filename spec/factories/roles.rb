FactoryBot.define do
  factory :role do
    name { Faker::Construction.role }
    description { Faker::Lorem.paragraph }
    head { false }
    division { nil }
    department { nil }
  end
end
