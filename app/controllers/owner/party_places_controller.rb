class Owner::PartyPlacesController < ApplicationController

  def new
    @party_places = PartyPlace.new
  end

  def create
    @party_place = PartyPlace.new(pp_params)
    @party_place.owner = current_user
    @party_place.save
    redirect_to profile_path
  end

  private

  def pp_params
    params.require(:party_place).permit(:name, :address, :description, :price_per_day, :picture)
  end
end
