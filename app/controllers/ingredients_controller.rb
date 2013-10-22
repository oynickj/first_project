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
    redirect_to('/ingredients')
  end
end
