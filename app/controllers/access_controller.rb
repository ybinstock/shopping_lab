class AccessController < ApplicationController

  def new
  end

  def create
  end

  def login
  end

  def attempt_login
  end


  def logout
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
