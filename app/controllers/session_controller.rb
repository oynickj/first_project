class SessionController < ApplicationController
  def new
  end
  def create
    email = params[:email]
    password = params[:password]
    @customer = Customer.where(email: email).first
    if @customer && @customer.authenticate(password)
      session[:customer_id] = @customer.id
      # redirect_to("/customers/#{customer.id}")
      redirect_to(@customer)
    else
      render :new
    end
  end
end
