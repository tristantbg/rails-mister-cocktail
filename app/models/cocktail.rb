class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  validates :name, presence: true, uniqueness: true, allow_blank: false

  mount_uploader :image, PhotoUploader
end
