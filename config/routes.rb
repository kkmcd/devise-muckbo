Rails.application.routes.draw do
  devise_for :users
  
  mount RailsAdmin::Engine => '/bomuck', as: 'rails_admin'
  root 'rooms#index'
  resources :rooms 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end