class CarsController < ApplicationController
  def index
    @cars = Car.all
    @cars_json = @cars.map do |car|
      {
        id: car.id,
        name: "#{car.make} #{car.model}",
        price: car.price_per_day,
        latitude: car.latitude,
        longitude: car.longitude
      }
    end.to_json
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car, notice: 'Car listed successfully.'
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  private


  def car_params
    params.require(:car).permit(:make, :model, :year, :fuel_type, :transmission, :color, :price_per_day, :description, images: [])
  end


end
