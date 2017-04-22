class WelcomeController < ApplicationController

  def index
    @user = current_user
    @user_playlists = Playlist.where(user_id: current_user.id)
    if Profile.where(user_id: current_user.id).exists?
      @welcome_text = @user.profile.first_name
    else
      @welcome_text = @user.email
    end
  end
  def create_profile_page

  end
  def create_profile
    profile = Profile.new(first_name: params[:first_name], last_name: params[:last_name], dob: Date.parse(params[:dob]), avatar: params[:avatar], bio: params[:bio], user_id: current_user.id)
    profile.save
    render('welcome/profile_created')
  end

  def view_profile
    @profile = Profile.where(user_id: current_user.id).first
    @bio_string = @profile.bio.inspect.gsub('"','').split('\r\n')
  end

  def edit_profile_page
    @profile = Profile.where(user_id: current_user.id).first
  end

  def edit_profile
    datestring = params[:day].to_s + ' ' + params[:month].to_s + ' ' + params[:year].to_s
    profile = Profile.where(user_id: current_user.id).first
    profile.first_name = params[:first_name] if params[:first_name] != ''
    profile.last_name = params[:last_name] if params[:last_name] != ''
    profile.dob = Date.civil(*params[:date].sort.map(&:last).map(&:to_i))
    profile.avatar = params[:avatar] if params[:avatar] != ''
    profile.bio = params[:bio] if params[:bio] != ''
    profile.save
    render('profile_edit_success.html.erb')
  end

  def search()
    @search = params[:search] + '%'
    @year = params[:year]
    @resultsName = Song.where("title LIKE '#{@search}'")
    @resultsGenre = Song.where("genre LIKE '#{@search}'")
    @resultsArtist = Song.where("artist LIKE '#{@search}'")
    @resultsYear = Song.where("year LIKE '#{@search}'")
  end

end
