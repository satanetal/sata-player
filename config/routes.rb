Rails.application.routes.draw do
  
  devise_for :users,
              controllers: { registrations: "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get 'users/:id' => 'users#show', as: :user
  resources :users
  resources :playlists
  resources :tracks
  resources :profiles
end
