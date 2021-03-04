class PartyPlacesController < ApplicationController
  def show
    @party_place = PartyPlace.find(params[:id])
    @reservation = Reservation.new
  end

  def index
    @party_places = PartyPlace.all
  end

  def new
    @party_places = PartyPlace.new
  end

  def create
    @party_place = PartyPlace.new(pp_params)
    @party_place.save
    redirect_to profile_path
  end

  private

  def pp_params
    params.require(:party_place).permit(:name, :address, :description, :price_per_day)
  end
end
