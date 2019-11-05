# frozen_string_literal: true

# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  first_name :string
#  last_name  :string
#  address1   :string
#  address2   :string
#  city       :string
#  state      :string
#  zip        :string
#  email      :string
#  phone      :string
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ApplicationRecord
  belongs_to :user, optional: true
  has_many :memberships
  has_many :divisions, through: :memberships

  accepts_nested_attributes_for :memberships

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
