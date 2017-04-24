class WelcomeController < ApplicationController
  def index
    @profiles = Profile.order('first_name ASC')
    @user = current_user
    @user_playlists = Playlist.where(user_id: current_user.id).order(:order)
    if Profile.where(user_id: current_user.id).exists?
      @welcome_text = @user.profile.first_name
    else
      @welcome_text = @user.email
    end
  end

  def search()
    @search = params[:search]
    @resultsName = Song.where("title LIKE '#{@search}'")
    @resultsGenre = Song.where("genre LIKE '#{@search}'")
    @resultsArtist = Song.where("artist LIKE '#{@search}'")
    @resultsYear = Song.where("year LIKE '#{@search}'")

  end
  def create_playlist
    playlist = Playlist.new(name: params[:playlist_name],user_id: current_user.id)
    playlist.save
    redirect_to action: 'index'
  end

  def view_playlist
    @playlist_id = request.GET[:playlist_id]
    @playlist_songs = []
    @playlist_to_songs_reference = PlaylistToSong.where(playlist_id: @playlist_id).order(:order)
    @playlist_to_songs_reference.each do |song_reference|
    @playlist_songs <<  Song.where(id: song_reference.id).first
    end

  end

  def delete_playlist
    playlist_id = request.GET[:playlist_id]
    playlist_to_delete = Playlist.where(id: playlist_id.to_i).first
    playlist_to_delete.destroy
    redirect_to action: 'index'
  end

  def remove_song
    song_id = request.GET[:song_id]
    playlist_id = request.GET[:playlist_id]
    song_to_delete = PlaylistToSong.where(playlist_id: playlist_id,song_id: song_id).first
    song_to_delete.destroy
    redirect_to action: 'view_playlist',playlist_id: playlist_id
  end

  def increase_playlist_order
    #work in progress
    redirect_to action: 'index'
  end

  def decrease_playlist_order
    #work in progress
    redirect_to action: 'index'
  end
  def increase_playlist_order
    #work in progress
    redirect_to action: ''
  end
  def decrease_song_order
    #work in progress
    redirect_to action: ''
  end

  def switch_song_position
    #work in progress
    redirect_to action: 'index'
  end

  def switch_playlist_position
    #work in progress
    redirect_to action: 'index'
  end

end
