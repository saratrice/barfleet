FactoryBot.define do
  factory :membership do
    profile
    division
    active { true }
  end
end
