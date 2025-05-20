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

    if @car.save?
      redirect_to @car

    else
      render :new, status: :unprocessable_entity
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

  end

end
