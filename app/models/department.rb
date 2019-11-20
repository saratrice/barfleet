class Department < ApplicationRecord
  has_many :divisions
  has_many :roles

  validates :name, presence: true
end
