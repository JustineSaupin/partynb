class Reservation < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :party_place

end
