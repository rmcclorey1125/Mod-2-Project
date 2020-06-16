class ReviewsController < ApplicationController

    def new
        @review = Review.new

        @restaurants = Restaurant.all
        @users = User.all
    end

    def create
        review = Review.create(review_params)

        redirect_to restaurant_path(review.restaurant_id)
    end

    def edit
        @review = Review.find(params[:id])

        @restaurants = Restaurant.all
        @users = User.all
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)

        redirect_to restaurant_path(review.restaurant_id)
    end

    def destroy
        @review = Review.find(params[:id])
        review.destroy
        
        redirect_to restaurants_path
    end

    private

    def review_params
        require(:review).permit(:user_id, :restaurant_id, :rating, :content)
    end

end
