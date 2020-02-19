class ReviewsController < ApplicationController

  def create
    review = Review.new(validate_params)
    review.restaurant = Restaurant.find(params[:id])
    review.save
    redirect_to restaurant(params[:id])
  end

  def new
    @review = Review.new
  end

private

  def validate_params
    params.require(:review).permit(:content, :rating)
  end
end
