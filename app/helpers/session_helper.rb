module SessionHelper

  def sign_in(customer)
    cookies.permanent[:remember_token] = user.remember_token
    current_customer = customer
  end

  def signed_in?
    !current_customer.nil?
  end

  def current_customer=(customer)
    @current_customer = customer
  end

  def current_customer
    @current_customer ||= Customer.find_by_remember_token(cookies[:remember_token])
  end

  def current_customer?(customer)
    customer == current_customer
  end

  def sign_out
    current_customer = nil
    cookies.delete(:remember_token)
  end


  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end
end
