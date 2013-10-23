class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = params[:ingredient]
    Ingredient.create(ingredient)
    #Ingredient.create(params[:ingredient])
    #OPTIMIZE use named routes
    redirect_to(ingredients_path)
  end
end
