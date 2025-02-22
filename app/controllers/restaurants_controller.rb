class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])

    if @restaurant.nil?
      redirect_to restaurants_path, alert: 'Restaurant not found'
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      # If successful, redirect to the show page of the new restaurant
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant was successfully created.'
    else
      # If validation fails, render the form again with error messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
