class ApplicationController < ActionController::Base
  respond_to :html, :json
        before_action :configure_permitted_parameters, if: :devise_controller?
          
        protected def configure_permitted_parameters
          added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
          other_attrs = added_attrs + [:description, :target]
          devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
          devise_parameter_sanitizer.permit :account_update, keys: other_attrs
        end
end
