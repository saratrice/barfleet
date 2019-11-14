# frozen_string_literal: true

class Rank < ApplicationRecord
  has_many :memberships

  validates :name, presence: true
end
