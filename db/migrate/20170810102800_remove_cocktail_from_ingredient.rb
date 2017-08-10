class RemoveCocktailFromIngredient < ActiveRecord::Migration[5.1]
  def change
    remove_reference :ingredients, :cocktail, index: true, foreign_key: true
  end
end
