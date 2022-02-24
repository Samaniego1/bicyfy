class OrdersController < ApplicationController
  before_action :find_order, only: [:edit, :destroy]

  def index
    @orders = Order.all.where(user: current_user)
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @bike = Bike.find(params[:bike_id])
    @order.bike = @bike
    @order.user = current_user
    if @order.save
      @bike.status = 0
      redirect_to orders_path
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order.destroy
    redirect_to user_path
  end


  private

  def order_params
    params.require(:order).permit(:amount, :status, :card_number, :full_name, :exp_month, :exp_year, :cvv)
  end

  def find_order
    @order = Order.find(params[:id])
  end
end
