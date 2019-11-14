# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Rank, type: :model do
  subject { build :rank }

  it { is_expected.to be_valid }
end
