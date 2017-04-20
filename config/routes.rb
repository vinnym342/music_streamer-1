Rails.application.routes.draw do
  get 'welcome/index'

  resources :songs
  devise_for :users
 resources :users
 root 'users#index'

end
