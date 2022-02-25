class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @bikes = Bike.available.search_by_bike(params[:query])
    else
      # render: "home"
      @bikes = Bike.available
    end
  end
end
