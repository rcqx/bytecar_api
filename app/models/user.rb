class User < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :username, uniqueness: true, presence: true, length: { minimum: 4, maximum: 25 }
end
