class ProfilesController < ApplicationController
  def show
    @user = current_user
    @pending = []
    @validate = []  
    @user.reservations.each do |reservation|
      if reservation.status == "en attente" 
        @pending << reservation
      else
        @validate << reservation
      end
    end
  end
end
