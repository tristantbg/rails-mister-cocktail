# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cocktails = JSON.parse(open("http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail").read)["drinks"];
ingredients = JSON.parse(open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)["drinks"];

cocktails.each do |cocktail|
  Cocktail.create(name: cocktail["strDrink"])
end

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end