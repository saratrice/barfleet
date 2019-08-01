require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show, session: { userinfo: OmniAuth.config.mock_auth[:auth0]}
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
    end
  end

end
