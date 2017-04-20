Rails.application.routes.draw do
  resources :songs
  devise_for :users
 resources :users

 root 'users#index'

end
