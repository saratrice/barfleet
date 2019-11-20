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


class Rank < ApplicationRecord
  has_many :memberships

  validates :name, presence: true
end
