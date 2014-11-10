class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  # Ensure a user is logged in
  def confirm_logged_in
  end

  # Stop a logged in user from going to the sign up page
  def prevent_login_signup
  end

end
