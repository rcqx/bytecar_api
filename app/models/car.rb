class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :brand, :model, :image, presence: true
end
