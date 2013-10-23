class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  def new
    # render customers/new signup form
    @customer = Customer.new
  end
  # POST /customers
  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      redirect_to(login_path)
    else
      # go to customers/new.html.erb and just display that page.
      # in this action
      render :new
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

#TODO what is this authenticate thing
  def authenticate
  end
end
