class WelcomeController < ApplicationController

  def index
    @user = current_user
    @user_playlists = Playlist.where(user_id: @user.id)
  end

  def search()
    line = '--------------------------------------------'
    @search = '%' + params[:search] + '%'
    @resultsName = Song.where("title LIKE '#{@search}'")
    @resultsGenre = Song.where("genre LIKE '#{@search}'")
    @resultsArtist = Song.where("artist LIKE '#{@search}'")
    @resultsYear = Song.where("year LIKE '#{@search}'")
  end

end
