# == Schema Information
#
# Table name: users
#
#  id             :bigint           not null, primary key
#  oauth_uid      :string
#  email          :string
#  email_verified :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryBot.define do
  factory :user do
    oauth_uid { "MyString" }
    email { "MyString" }
    email_verified { false }
  end
end
