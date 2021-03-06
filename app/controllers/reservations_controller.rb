class ReservationsController < ApplicationController

    def new 
        @reservation = Reservation.new
        @restaurants = Restaurant.all 
        @users = User.all 
    end 

    def create 
        @reservation = Reservation.create(reservation_params)
        if @reservation.valid? 
            redirect_to user_path(@reservation.user)
        else 
            flash[:reservation_errors] = @reservation.errors.full_messages 
            redirect_to new_reservation_path
        end 
    end 

    def edit 
        @reservation = Reservation.find(params[:id])
        @restaurants = Restaurant.all 
        @users = User.all
        credit_check(@reservation)
    end 

    def update 
        @reservation = Reservation.find(params[:id])
        @reservation.update(reservation_params)
        if @reservation.valid?
            redirect_to user_path(@reservation.user)
        else 
            flash[:reservation_errors] = @reservation.errors.full_messages 
            redirect_to edit_reservation_path 
        end 
    end 

    def destroy  
        @user = Reservation.find(params[:id]).user 
        Reservation.destroy(params[:id])
        redirect_to user_path(@user)
    end 
        
    private 

    def reservation_params 
        params.require(:reservation).permit(:user_id, :restaurant_id, :date, :time, :party)
    end

    def credit_check(reservation)
        if @current_user.id == reservation.user.id 
            #good to go 
            render "edit"
        else 
            flash[:res_edit_error] = "You dont have access to edit this reservation. Try making one for yourself here."
            redirect_to new_reservation_path
        end 
    end 
end
