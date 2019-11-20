# == Schema Information
#
# Table name: roles
#
#  id            :bigint           not null, primary key
#  name          :string
#  description   :text
#  head          :boolean
#  division_id   :bigint
#  department_id :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :role do
    name { Faker::Construction.role }
    description { Faker::Lorem.paragraph }
    head { false }
    division { nil }
    department { nil }
  end
end
