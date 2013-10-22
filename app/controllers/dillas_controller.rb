class DillasController < ApplicationController
  def index
    @dillas = Dilla.all
  end

  def new
    @dilla = Dilla.new
  end

  def create
    dilla = params[:dilla]
    Dilla.create(dilla)
    #Dilla.create(params[:dilla])
    redirect_to('/dillas')
  end
end
