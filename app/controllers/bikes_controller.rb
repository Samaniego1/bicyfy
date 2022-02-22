class BikesController < ApplicationController
  before_action :current_bike, only: [:show, :edit, :update, :destroy]
  def index
    @bikes = Bike.all
  end
  def new
    @bike = Bike.new
  end
  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end
  def show
  end
  def edit
  end
  def update
    @bike.update(bike_params)
  end
  def destroy
  end
  private
  def bike_params
    params.require(:bike).permit(:photo, :brand, :model, :details, :category, :wheel_size, :price)
  end
  def current_bike
    @bike = Bike.find(params[:id])
  end
end
