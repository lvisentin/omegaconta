Rails.application.routes.draw do
  devise_for :users

  root "companies#index"
  resources :taxes do
    collection do
      post :download
      get :download_file
    end
  end
  resources :companies

  get "dashboard" => "dashboard#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
