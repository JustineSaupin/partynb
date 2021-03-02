class PartyPlacesController < ApplicationController

  def show
    @party_place = PartyPlace.find(params[:id])
  end

end
