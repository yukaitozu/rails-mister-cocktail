require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = open(url).read
drinks = JSON.parse(json)
drinks['drinks'].each do |obj|
  Ingredient.create!(name: obj['strIngredient1'])
end
