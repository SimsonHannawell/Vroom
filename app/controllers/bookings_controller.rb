class BookingsController < ApplicationController


  def create

    if @booking.save?
      redirect_to @booking, notice: "Booking created!"

    else
      render :new, status: :unprocessable_entity
    end

  end

  def index
    @incoming_bookings = current_user.bookings.incoming  # scope or however you define incoming
    @pending_bookings = current_user.bookings.pending    # scope or however you define pending
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
