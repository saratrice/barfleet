# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  first_name :string
#  last_name  :string
#  address1   :string
#  address2   :string
#  city       :string
#  state      :string
#  zip        :string
#  email      :string
#  phone      :string
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :profile do
    user { nil }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    address1 { Faker::Address.street_address }
    address2 { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    active { true }
  end
end
