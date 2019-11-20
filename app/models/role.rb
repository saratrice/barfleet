class Role < ApplicationRecord
  has_many :memberships
  belongs_to :division
  belongs_to :department
end
