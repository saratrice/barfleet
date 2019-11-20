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

require 'rails_helper'

RSpec.describe Division, type: :model do
  it { is_expected.to be_valid }
end
