class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart, :province_selection
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

       def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:address, :email, :password)}

            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:address, :email, :password, :current_password, :province_id)}
       end
  private

  def initialize_session
    session[:shopping_cart] ||= []
  end

  def cart
    Product.find(session[:shopping_cart])
  end

end
