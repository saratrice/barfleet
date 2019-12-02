# == Schema Information
#
# Table name: roles
#
#  id            :bigint           not null, primary key
#  name          :string
#  description   :text
#  head          :boolean
#  division_id   :bigint
#  department_id :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Role < ApplicationRecord
  has_many :memberships
  belongs_to :division, optional: true
  belongs_to :department, optional: true

  scope :non_specific, -> { where(division_id: nil, department_id: nil) }
end
