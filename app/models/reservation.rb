class Reservation < ApplicationRecord
  STATUSES = ["validée", "refusée", "annulée", "en attente"]

  belongs_to :renter, class_name: 'User'
  belongs_to :party_place

  validates :status, inclusion: { in: STATUSES }, presence: true

end


