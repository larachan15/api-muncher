require 'httparty'

class EdamamApiWrapper
  BASE_URL = "https://api.edamam.com/search"
  APP_KEY = ENV["APP_KEY"]
  APP_ID = ENV["APP_ID"]

  def self.list_recipes(query)
    recipes = []

    # TODO: Fetch real data
    # loop through all data for real recipes
    r = Recipe.new(query)
    recipes << r

    return recipes
  end

  def self.show_recipe_detail(recipe_id)
    return Recipe.new(recipe_id)
  end

end
