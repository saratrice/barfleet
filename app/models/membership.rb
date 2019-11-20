# frozen_string_literal: true

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


class Membership < ApplicationRecord
  belongs_to :profile
  belongs_to :division
  belongs_to :rank, optional: true
  belongs_to :role, optional: true
end
