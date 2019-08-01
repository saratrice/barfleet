require 'rails_helper'

RSpec.describe LogoutController, type: :controller do

  before do
    allow(controller).to receive(:logout_url).and_return('https://test-auth0-url.com')
  end

  describe "DELETE #logout" do
    it "redirects to root" do
      delete :logout, session: { userinfo: OmniAuth.config.mock_auth[:auth0]}
      expect(response).to redirect_to('https://test-auth0-url.com')
    end

    it 'deletes the userinfo from the session' do
      delete :logout, session: { userinfo: OmniAuth.config.mock_auth[:auth0]}
      expect(session[:userinfo]).to be_blank
    end
  end

end
