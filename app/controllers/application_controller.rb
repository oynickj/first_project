class ApplicationController < ActionController::Base
  protect_from_forgery
  #before any action runs, run get user
  before_filter :get_user
  private
  def get_user
    #goal is to find the user currently logged in. a session is a hash with session id, csrf, and customer_id (added in the create method). if there is a customer_id (ie someone logged in), find that customer by the customer id, then assign it @customer instance variable.
    if session["customer_id"]
      @customer = Customer.find(session["customer_id"])
    end
  end
end
