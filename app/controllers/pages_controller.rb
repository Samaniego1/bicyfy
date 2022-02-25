class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @bikes = Bike.search_by_bike(params[:query])
    else
      # render: "home"
      @bikes = Bike.all
    end
  end
end
