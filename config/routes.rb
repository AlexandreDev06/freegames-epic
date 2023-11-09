Rails.application.routes.draw do
  resources :centrals
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  get 'up' => 'rails/health#show', as: :rails_health_check
end
