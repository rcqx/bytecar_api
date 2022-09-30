class Api::V1::ReservationsController < ApplicationController
  # before_action :authenticate_user!

  # POST /reservation
  def index
    @reservations = Reservation.all

    render json: @reservations, include: %i[car user]
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.permit(:city, :date, :user_id, :car_id)
  end
end
