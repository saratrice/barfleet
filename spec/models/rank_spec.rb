# frozen_string_literal: true

# == Schema Information
#
# Table name: ranks
#
#  id           :bigint           not null, primary key
#  name         :string
#  abbreviation :string
#  sort_number  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


require 'rails_helper'

RSpec.describe Rank, type: :model do
  subject { build :rank }

  it { is_expected.to be_valid }
end
