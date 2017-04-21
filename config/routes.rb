Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/search'

  resources :playlists
  resources :songs
  devise_for :users
  resources :users
  root 'users#index'

end
