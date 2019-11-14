# frozen_string_literal: true

FactoryBot.define do
  factory :rank do
    name { Faker::Job.title }
    abbreviation { Faker::Job.seniority }
    sort_number { Faker::Number.number(digits: 1) }
  end
end
