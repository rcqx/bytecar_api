class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_one_attached :image

  validates :brand, :model, :image, presence: true

  def image_url
    Rails.application.routes.url_helpers.url_for(image)
  end
end
