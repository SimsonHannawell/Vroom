class BookingsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @incoming_bookings = current_user.bookings.incoming
    @pending_bookings = current_user.bookings.pending
  end

  def confirm
    @booking = Booking.find(params[:id])
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car

    if @booking.save
      redirect_to booking_path(@booking), notice: "Booking created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, notice: "Booking deleted"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :time)
  end
end
