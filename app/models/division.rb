# frozen_string_literal: true

# == Schema Information
#
# Table name: divisions
#
#  id            :bigint           not null, primary key
#  name          :string
#  location      :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ancestry      :string
#  department_id :bigint
#

class Division < ApplicationRecord
  has_ancestry
  has_many :memberships
  has_many :profiles, through: :memberships
  has_many :roles
  belongs_to :department, optional: true

  # only return division specific roles
  def path_roles
    path.map { |div| div.roles.where.not(division_id: nil) }.flatten
  end

  def available_roles
    return path_roles if department.blank?

    (path_roles + department.roles).flatten
  end
end
