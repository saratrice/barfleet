FactoryBot.define do
  factory :profile do
    user { nil }
    first_name { "MyString" }
    last_name { "MyString" }
    address1 { "MyString" }
    address2 { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    active { true }
  end
end
