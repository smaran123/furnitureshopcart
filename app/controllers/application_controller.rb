class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :update_sanitized_params, if: :devise_controller?

    def update_sanitized_params
      devise_parameter_sanitizer.for(:sign_up) {|u| u.permit!}
    end
  
  
  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(Admin)
     admin_products_path
     
      else resource_or_scope.is_a?(User)
    welcome_index_path
          end
  end
  
  
  
  
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
  
  
  
  
  
  
  
  
  
end
