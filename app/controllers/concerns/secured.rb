module Secured
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user!
  end

  def user_signed_in?
    session[:userinfo].present?
  end

  def authenticate_user!
    if user_signed_in?
      @current_user = session[:userinfo]
    else
      redirect_to root_path
    end
  end

  def current_user
    @current_user
  end
end
