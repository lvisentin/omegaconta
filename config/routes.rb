Rails.application.routes.draw do
  devise_for :users
  root "companies#index"
  resources :taxes

  resources :companies
  get "up" => "rails/health#show", as: :rails_health_check
end
