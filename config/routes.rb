Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/search'
  get 'welcome/view_playlist'
  get 'welcome/delete_playlist'
  get 'welcome/remove_song'

  post 'welcome/create_playlist'

  get 'profile/view'
  get 'profile/edit_page'
  get 'profile/edit'
  get 'profile/create_page'
  get 'profile/edit_success'

  get 'playlists/edit_success'
  get 'profile/edit_success'

  post 'profile/edit_success'
  post 'profile/edit'
  post 'profile/create'
  # get 'welcome/edit_profile'
  resources :songs
  devise_for :users
  resources :users
  root 'users#index'

end
