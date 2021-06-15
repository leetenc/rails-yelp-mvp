class RestaurantsController < ApplicationController
 before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @completed = @restaurant.completed ? 'Completed' : 'To be done'
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit; end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurant_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:title, :details, :completed)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
