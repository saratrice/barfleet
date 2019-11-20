# == Schema Information
#
# Table name: departments
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Department < ApplicationRecord
  has_many :divisions
  has_many :roles

  validates :name, presence: true
end
