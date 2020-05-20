class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) do |patron_params|
            patron_params.permit({ business_role: [] }, :email, :password, :password_confirmation)
        end
    end
    
end
