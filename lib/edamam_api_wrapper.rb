require 'httparty'

class EdamamApiWrapper
  BASE_URL = "https://api.edamam.com/search?"
  APP_KEY = ENV["APP_KEY"]
  APP_ID = ENV["APP_ID"]

  def self.list_recipes(query)
  #   # recipes = []
  #   #
  #   # # TODO: Fetch real data
  #   # # loop through all data for real recipes
  #   # r = Recipe.new(query)
  #   # recipes << r
  #   #
  #   # return recipes
    url = BASE_URL + "q=#{query}" + "&app_id=#{APP_ID}" + "&app_key=#{APP_KEY}"

    encoded_url = URI.encode(url)
    data = HTTParty.get(encoded_url)

    recipes = []

    # return data

    # if data["hits"]
      data["hits"].each do |recipe_data|
        recipes << create_recipe(recipe_data)
      end
    # end
    return recipes
  end

  def self.show_recipe_detail(id)
    uri = URI.encode("http://www.edamam.com/ontologies/edamam.owl#recipe")
    url = BASE_URL + "r=#{uri}" + "_#{id}" + "&app_id=#{APP_ID}" + "&app_key=#{APP_KEY}"

    # encoded_url = URI.encode(url)
    data = HTTParty.get(url)

    # if data
    #   label = data[0]["label"]
    #   uri = data[0]["uri"]
    #   image = data[0]["image"]
    #
    #   return Recipe.new(label, uri, image)
    # end

    return create_recipe(id)
  end

  private

  def self.create_recipe(api_params)
    return Recipe.new(
      api_params["recipe"]["label"],
      api_params["recipe"]["uri"],
      api_params["recipe"]["image"]
    )
  end


end
