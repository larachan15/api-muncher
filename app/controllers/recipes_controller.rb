require 'pry'

class RecipesController < ApplicationController

  def homepage

  end

  def index
    @recipes = EdamamApiWrapper.list_recipes(params[:search])
  end

  def show
    @recipes = EdamamApiWrapper.show_recipe_detail(params[:id])
    # binding.pry
  end

end
