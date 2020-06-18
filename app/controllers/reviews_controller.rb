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
        credit_check(@review)
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
        params.require(:review).permit(:user_id, :restaurant_id, :rating, :content)
    end

    def credit_check(review)
        if @current_user.id == review.user.id 
            #good to go 
            render "edit"
        else 
            flash[:edit_error] = "You dont have access to edit this review."
            redirect_to restaurant_path(review.restaurant)
        end 
    end 

end
