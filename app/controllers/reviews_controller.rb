class ReviewsController < ApplicationController

  def index
    @reviews = Review.all.where(user_id: params[:user_id])
  end

  def new
    @review = Review.new
    @order = Order.find(params[:order_id])
  end

  def create
    @review = Review.new(review_params)
    @order = Order.find(params[:order_id])
    @review.order = @order
    @review.user = @order.bike.user
    if @review.save
      redirect_to user_path(@review.user_id)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
