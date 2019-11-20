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

require 'rails_helper'

RSpec.describe Role, type: :model do
  subject { build :role }

  it { is_expected.to be_valid }
end
