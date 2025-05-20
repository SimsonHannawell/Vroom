class BookingsController < ApplicationController


  def create

    if @booking.save?
      redirect_to @booking, notice: "Booking created!"

    else
      render :new, status: :unprocessable_entity
    end

  end


  def destroy
    @booking = Booking.find(params[:id])
  end

  private

  def car_params

  end

  def show
   @bookings = Booking.find(params[:id])
  end


end
