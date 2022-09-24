class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, 
  :validatable, authentication_keys: [:login]
  
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, length: { in: 2..25 }

  attr_writer :login

  def login
    @login || self.username || self.email
  end
end
