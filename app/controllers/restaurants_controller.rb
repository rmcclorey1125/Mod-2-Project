class RestaurantsController < ApplicationController

    skip_before_action :auth_user, only: [:index, :show]

    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

end
