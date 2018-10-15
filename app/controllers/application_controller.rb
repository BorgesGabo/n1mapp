class ApplicationController < ActionController::Base
    before_action :configure_devise_params, if: :devise_controller?
def hello
    render html: "Bienvenido a NiUnaMas"
    
end

def after_sign_in_path_for(user)
    admin_pages_dashboard_path
end


def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :password, :password_confirmation)
    end
end
end
