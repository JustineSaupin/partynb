class PartyPlacesController < ApplicationController
  def show
  end

  def index
    @party_places = PartyPlace.all
  end
end
