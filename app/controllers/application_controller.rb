class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_title, :load_users

  private

  def set_title
    @title = controller_name.capitalize
  end

  def load_users
    @users ||= User.all
    session[:current_user] = @users.first if session[:current_user].blank?
  end
end
