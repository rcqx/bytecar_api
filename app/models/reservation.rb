class Reservation < ApplicationRecord
  belongs_to :car
  belongs_to :user
  
  validates :date, :city, presence: true
end
