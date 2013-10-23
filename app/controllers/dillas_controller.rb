class DillasController < ApplicationController
  def index
    @dillas = Dilla.where({customer_id: @customer.id}).all

  end

  def new
    @dilla = Dilla.new
  end

  def create
    dilla = Dilla.create(params[:dilla])
    @customer.dillas << dilla
    #Dilla.create(params[:dilla])
    redirect_to('/orderconfirmation')
    #TODO redirect to order confirmation page, which has links to order history and order more dillas
  end
end
