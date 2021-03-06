class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])

		if current_user
			@reservation = @restaurant.reservations.build
		end
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

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.update_attributes(restaurant_params)
			redirect_to restaurant_path(@restaurant)
		else
			redirect_to edit_restaurant_url(@restaurant)
		end
	end

	def destroy
	end

	private
	def restaurant_params
		params.require(:restaurant).permit(:name, :address, :capacity, :url, :style)
	end
end
