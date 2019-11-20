require 'rails_helper'

RSpec.describe Role, type: :model do
  subject { build :role }

  it { is_expected.to be_valid }
end
