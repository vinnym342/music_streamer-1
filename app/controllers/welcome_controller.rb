class WelcomeController < ApplicationController
before_action :set_search, only: [:search]
  def index
    @user = current_user
    @user_playlists = Playlist.where(user_id: @user.id)
  end

  def search(input)
    @search = Song.search(params[:search])
    @resultsName = Song.where(title: @search)
    @resultsGenre = Song.where(genre: @search)
    @resultsArtist = Song.where(artist: @search)
    @resultsName = Song.where(name: @search)
    @resultsYear = Song.where(year: @search)
  end

end
