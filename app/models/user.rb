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

class User < ApplicationRecord
end
