Rails.application.routes.draw do
  devise_for :users
  root "dashboard#index"
  resources :taxes
  resources :companies

  get "dashboard" => "dashboard#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
