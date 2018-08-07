Rails.application.routes.draw do
  get 'admin_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'admin_pages#home'
end
