class Role < ApplicationRecord
  has_many :memberships
  belongs_to :division, optional: true
  belongs_to :department, optional: true
end
