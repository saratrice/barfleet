require 'rails_helper'

RSpec.describe Auth0Controller, type: :controller do

  before do
    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:auth0]
  end

  describe '#callback' do
    it "redirects to the dashboard page" do
      get :callback
      expect(response).to redirect_to(dashboard_url)
    end

    it 'sets the session userinfo' do
      get(:callback)
      expect(session[:userinfo]).to_not be_blank
    end
  end

  describe '#failure' do
    it 'shows a failure page' do
      get :failure, params: { 'message' => 'failed login' }
      expect(response).to render_template (:failure)
      expect(assigns(:error_msg)).to eq('failed login')
    end
  end

end
