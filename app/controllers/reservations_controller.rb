class ReservationsController < ApplicationController


  def create

    @reservation = Reservation.new(resa_params)
    # we need `party_place_id` to associate resa with corresponding pp
    @party_place = PartyPlace.find(params[:party_place_id])
    @reservation.renter = current_user
    @reservation.party_place = @party_place
    @reservation.save
    redirect_to profile_path
  end

  private

  def resa_params
    params.require(:reservation).permit(:date_begin, :date_end)
  end

end
