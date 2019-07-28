class DashboardController < ApplicationController
  include Secured

  def show
    @user = session[:userinfo].with_indifferent_access
  end
end
