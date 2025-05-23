class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @incoming_bookings = current_user.bookings.incoming
    @pending_bookings = current_user.bookings.pending
  end

  def confirm
    @booking = Booking.find(params[:id])
    @car = @booking.car

    days = (@booking.end_date - @booking.start_date).to_i
    @rental_price = @car.price_per_day * days
    @cleaning_fee = 25.00
    @service_fee = (@rental_price * 0.2).round(2) # example 20% fee
    @total_price = (@rental_price + @cleaning_fee + @service_fee).round(2)
  end

 def create
  @car = Car.find(params[:car_id])
  @booking = Booking.new(booking_params)
  @booking.car = @car
  @booking.user = current_user # if you're tracking user bookings

    if @booking.save
      redirect_to confirm_booking_path(@booking)
    else
      redirect_back fallback_location: car_path(@car), alert: "Booking failed"
    end
  end


  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, notice: "Booking deleted"
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
