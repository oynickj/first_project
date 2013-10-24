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
      flash.now.alert = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:customer_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to root_path
  end

end
