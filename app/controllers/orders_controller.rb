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
    @order = Order.new(order_params)
    if params[:product_ids].present?
      for id in params[:product_ids]
        @order.order_products.build(product_id: id)
      end
    end
    if @order.save
      redirect_to orders_path, notice: "Order saved"
    else
      render :new
    end
  end

  private
  def order_params
    params.require(:order).permit(:name, :user_id)
  end



end
