class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :signed_in?

  private

  def authorize
    redirect_to sign_in_url, error: "Not authorized" if current_user.nil?
  end

  def current_user
    @current_user ||= session[:user] if session[:user]
  end

  def signed_in?
    current_user != nil
  end
end
