class RestaurantsController < ApplicationController
  before_action :fetch_restaurant, only: %i[show edit update]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  private

  def fetch_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    par = %i[name address phone_number category]
    params.require(:restaurant).permit(par)
  end
end
