Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/search'
  get 'welcome/view_profile'
  get 'welcome/edit_profile_page'
  get 'welcome/create_profile_page'
  post 'welcome/edit_profile'
  post 'welcome/create_profile'
  # get 'welcome/edit_profile'
  resources :songs
  devise_for :users
  resources :users
  root 'users#index'

end
