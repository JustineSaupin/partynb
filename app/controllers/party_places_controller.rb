class PartyPlacesController < ApplicationController
  def index
    @party_places = PartyPlace.all
  end
end
