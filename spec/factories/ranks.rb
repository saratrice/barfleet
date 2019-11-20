# frozen_string_literal: true

# == Schema Information
#
# Table name: ranks
#
#  id           :bigint           not null, primary key
#  name         :string
#  abbreviation :string
#  sort_number  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


FactoryBot.define do
  factory :rank do
    name { Faker::Job.title }
    abbreviation { Faker::Job.seniority }
    sort_number { Faker::Number.number(digits: 1) }
  end
end
