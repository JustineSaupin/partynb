class Owner::ReservationsController < ApplicationController
  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = "refusée"
    @reservation.save
    redirect_to profile_path
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = "validée"
    @reservation.save!
    redirect_to profile_path
  end
end
