class ApplicationController < ActionController::Base
require 'devise_roles'

 protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :contact_email, :pword, :content_code, :client_code, :connect_code, :pc_client])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_number, :contact_email, :pword, :content_code, :client_code, :connect_code, :pc_client])
    end
	
  impersonates :user 

	
end
