# == Schema Information
#
# Table name: divisions
#
#  id            :bigint           not null, primary key
#  name          :string
#  location      :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ancestry      :string
#  department_id :bigint
#

FactoryBot.define do
  factory :division do
    department
    name { Faker::Lorem.word }
    location { "USA" }
    description { "A drinking club with a Star Trek problem" }
  end
end
