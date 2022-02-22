class OrdersController < ApplicationController
  before_action :find_order, only: [:edit, :destroy]

  def index
    @orders = Order.all
  end
  
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.bike = @bike
    if @order.save
      redirect_to bike_path
    else
      render :new
    end
  end

  def destroy
    @order.destroy
    redirect_to user_path
  end

  # def index_by_user
  #   @order = Order.where(user: current_user)
  # end

  private

  def order_params
    params.require(:order).permit(:amount, :date_created, :status)
  end

  def find_order
    @order = Order.find(params[:id])
  end
end
