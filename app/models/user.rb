class User < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :username, uniqueness: true, presence: true
end
