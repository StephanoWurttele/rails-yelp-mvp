class RestaurantsController < ApplicationController

  before_action :get_restaurant, only: ['show']

  def index
    @restaurants = Restaurant.all
  end

  def show
    num = 0
    @review_number = -> do
      num += 1
      num
    end
  end

  def new
    @restaurant = Restaurant.new
  end
  
  def create
    new_restaurant = Restaurant.create(validate_params)
    redirect_to restaurant(new_restaurant[:id])
  end

private

  def get_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def validate_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
