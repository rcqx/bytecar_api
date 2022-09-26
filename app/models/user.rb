class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
  :jwt_authenticatable,
  :registerable,
  jwt_revocation_strategy: JwtDenylist,
  authentication_keys: [:login]
 
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, length: { in: 2..25 }

  attr_writer :login

  def login
    @login || self.name || self.email
  end
end
