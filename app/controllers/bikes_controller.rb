class BikesController < ApplicationController
  before_action :current_bike, only: [ :edit, :update, :destroy]

  def index
    @bikes = Bike.where(user: current_user)
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
    @bike = Bike.find(params[:id])
  end

  def edit
  end

  def search
    if params[:query].present?
      @bikes = Bike.search_by_bike(params[:query])
    else
      # render: "home"
      @bikes = Bike.all
    end
  end

  def update
    @bike.update(bike_params)
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:brand, :model, :details, :category, :wheel_size, :price, photos: [])
  end

  def current_bike
    @bike = Bike.find(params[:id])
  end
end
