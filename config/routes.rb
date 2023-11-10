Rails.application.routes.draw do
  root to: 'centrals#index'
  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :centrals
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
end
