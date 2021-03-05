class PartyPlacesController < ApplicationController
  def show
    @party_place = PartyPlace.find(params[:id])
    @reservation = Reservation.new
    @user = current_user
  end

  def index
    if params[:query].present?
      sql_query = <<~SQL
        party_places.name @@ :query
        OR party_places.address @@ :query
        OR party_places.description @@ :query
      SQL
      @party_places = PartyPlace.where(sql_query, query: "%#{params[:query]}%")
    else
      @party_places = PartyPlace.all
    end
  end
end
