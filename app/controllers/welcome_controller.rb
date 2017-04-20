class WelcomeController < ApplicationController
  def index
    @user = current_user
    @user_playlists = Playlist.where(user_id: @user.id)
  end
end
