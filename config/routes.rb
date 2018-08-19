Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :help_centers
  get 'admin_pages/dashboard'
  get 'static_pages/landing'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing'
end
