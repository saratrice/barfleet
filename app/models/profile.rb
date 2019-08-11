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

  validates :first_name, :last_name, presence: true
end
