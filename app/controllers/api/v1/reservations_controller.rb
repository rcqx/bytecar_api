class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations.includes(:car)
    render json: @reservations, include: [:car], status: :ok
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(:city, :date, :car_id)
  end
end
