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

  end
end
