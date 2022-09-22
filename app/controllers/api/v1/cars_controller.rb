class Api::V1::CarsController < ApplicationController
  # GET /cars
  def index
    @cars = Car.all

    render json: @cars
  end

  # GET /cars/1
  def show
    @car = Car.find(params[:id])

    render json: @car
  end
end
