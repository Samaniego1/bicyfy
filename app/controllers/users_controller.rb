class UsersController < ApplicationController

  before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @reviews = Review.where(user: @user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
