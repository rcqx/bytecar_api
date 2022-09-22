class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  
  validates :name, presence: true, length: { in: 2..25 }
end
