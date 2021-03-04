class ProfilesController < ApplicationController

  def show
    @user = current_user
    @pending = current_user.reservations.where(status: "en attente")
    @validate = current_user.reservations.where.not(status: "en attente" )
    
    @owned_pending = Reservation.includes(:party_place).
                       where(party_places: { owner: current_user }, status: "en attente")

    @owned_validate = Reservation.includes(:party_place).
                       where(party_places: { owner: current_user }).
                       where.not( status: "en attente")
  end

end
