class AccessController < ApplicationController

  def new
      @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.user.id
      redirect_to login_path
    else
      redirect_to login_path
    end
  end

  def login
  end

  def attempt_login
   if params[:username].present? && params[:password].present?
      found_user = User.where(username: params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end


    if !found_user
      flash.now[:alert] = "Invalid username"
      render :login

    elsif !authorized_user
      flash.now[:alert] = "Invalid password"
      render :login

    else
      session[:user_id] = authorized_user.id
      flash[:success] = "You are now logged in."
      redirect_to home_path
    end
    end
  end



  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end

