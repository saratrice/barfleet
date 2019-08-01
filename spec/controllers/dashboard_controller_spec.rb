require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show, session: { userinfo: OmniAuth.config.mock_auth[:auth0]}
      expect(response).to have_http_status(:success)
    end

    it "renders the show template" do
      get :show, session: { userinfo: OmniAuth.config.mock_auth[:auth0]}
      expect(response).to render_template(:show)
    end

    it "assigns the user instance variable" do
      get :show, session: { userinfo: OmniAuth.config.mock_auth[:auth0]}
      expect(assigns(:user)).to eq(session[:userinfo])
    end
  end

end
