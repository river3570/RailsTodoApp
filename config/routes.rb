Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check
  resources :todos, only: [:index]
  root "todos#index"
end
