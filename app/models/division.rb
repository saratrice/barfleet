# frozen_string_literal: true

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

class Division < ApplicationRecord
  has_ancestry
  has_many :memberships
  has_many :profiles, through: :memberships
  belongs_to :department, optional: true
end
