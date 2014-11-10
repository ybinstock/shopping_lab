class OrdersController < ApplicationController
  before_action :current_user
  before_action :confirm_logged_in

  def index

  end

  def show

  end

  def edit

  end

  def new

  end

  def create

  end

  private
  def order_params
    params.require(:order).permit(:name, :user_id)
  end



end
