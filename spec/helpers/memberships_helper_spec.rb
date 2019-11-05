require 'rails_helper'

RSpec.describe MembershipsHelper, type: :helper do
  describe '#division_pathname' do
    let(:division) { Division.create! :name => 'Stinky', :parent => Division.create!(:name => 'Squeeky') }
    it 'shows a breadcrumb trail' do
      expect(helper.division_pathname(division)).to eq('Squeeky > Stinky')
    end
  end
end
