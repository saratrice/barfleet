# frozen_string_literal: true

class Membership < ApplicationRecord
  belongs_to :profile
  belongs_to :division
  belongs_to :rank, optional: true
  belongs_to :role, optional: true
end
