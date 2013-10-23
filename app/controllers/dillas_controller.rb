class DillasController < ApplicationController
  def index
    @dillas = Dilla.all
  end

  def new
    @dilla = Dilla.new
  end

  def create
    dilla = Dilla.create(params[:dilla])
    @customer.dillas << dilla
    #Dilla.create(params[:dilla])
    redirect_to('/dillas')

    #TODO redirect to customer's order history page
  end
end
