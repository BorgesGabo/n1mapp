class ApplicationController < ActionController::Base
def hello
    render html: "Bienvenido a NiUnaMas"
    
end
    #To protect the app from hackers
    protect_from_forgery with: :exception
    
    #this request authentication before load any page or better before any action
    before_action :authenticate_user!
    #the page landing does not require authentication
    skip_before_action :authenticate_user!, :only => [:landing]

#what to do after sign in
def after_sign_in_path_for(resource)
    admin_pages_dashboard_url
end

end
