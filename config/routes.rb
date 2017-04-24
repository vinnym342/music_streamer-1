Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/search'
  get 'welcome/view_playlist'
  get 'welcome/delete_playlist'
  get 'welcome/remove_song'
  get 'welcome/increase_playlist_order'
  get 'welcome/decrease_playlist_order'
  get 'welcome/increase_song_order'
  get 'welcome/decrease_song_order'

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
  resources :playlists
  resources :songs
  devise_for :users
  resources :users
  root 'users#index'

  authenticated :user do
    root 'users#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
    resources :messages
end

end
