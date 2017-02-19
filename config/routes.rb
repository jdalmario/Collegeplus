Rails.application.routes.draw do
  resources :subscriptions
  resources :events

  resources :home, only: [:index, :create]

  get '/about', to: 'home#about'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
