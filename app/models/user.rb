class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # As owner :
  has_many :party_places, foreign_key: 'owner_id'
  has_many :received_reservations, through: :party_places, source: :reservations
  # As renter :
  has_many :reservations, foreign_key: 'renter_id'

  has_one_attached :picture

end
