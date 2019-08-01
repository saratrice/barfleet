require 'rails_helper'

RSpec.describe LogoutHelper, type: :helper do
  describe '#logout_url' do
    it 'responds with a logout url for Auth0' do
      expect(helper.logout_url.to_s).to eq('https://test-auth0-url.com/v2/logout?returnTo=http://test.host/&client_id=12345')
    end
  end
end
