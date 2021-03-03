class PartyPlacesController < ApplicationController
  def show
    @party_place = PartyPlace.find(params[:id])
  end
  
  def index
    @party_places = PartyPlace.all
  end
end
