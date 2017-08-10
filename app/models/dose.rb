class Dose < ApplicationRecord
  belongs_to :cocktail, dependent: :destroy
  belongs_to :ingredient, dependent: :destroy
  validates :description, presence: true, allow_blank: false
  validates :ingredient, uniqueness: { scope: :cocktail }
end
