Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/search'

  resources :songs
  devise_for :users
 resources :users
 root 'users#index'

end
