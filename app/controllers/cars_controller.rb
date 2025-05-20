class CarsController < ApplicationController

  def index

    @cars = Car.all

  end

  def show

    @car = Car.find(params[:id])

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
  end

  def destroy
    @car = Car.find(params[:id])
  end

  private


  def car_params
    params.require(:car).permit(:make, :model, :year, :fuel_type, :transmission, :color, :price_per_day, :description)
  end

end
