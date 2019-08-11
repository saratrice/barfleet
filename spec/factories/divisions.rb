# == Schema Information
#
# Table name: divisions
#
#  id          :bigint           not null, primary key
#  type        :string
#  name        :string
#  location    :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ancestry    :string
#

FactoryBot.define do
  factory :division do
    type { "" }
    name { "Barfleet" }
    location { "USA" }
    description { "A drinking club with a Star Trek problem" }
  end
end
