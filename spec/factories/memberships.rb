# == Schema Information
#
# Table name: memberships
#
#  id          :bigint           not null, primary key
#  profile_id  :bigint           not null
#  division_id :bigint           not null
#  active      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  rank_id     :bigint
#  role_id     :bigint
#

FactoryBot.define do
  factory :membership do
    profile
    division
    active { true }
  end
end
