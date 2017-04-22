class ProfileController < ApplicationController
  def create_page

  end
  def create
    profile = Profile.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    dob: Date.civil(*params[:date].sort.map(&:last).map(&:to_i)),
    avatar: params[:avatar],
    bio: params[:bio],
    user_id: current_user.id)
    profile.save
    render('created')
  end

  def view
    @profile = Profile.where(user_id: current_user.id).first
    @bio_string = @profile.bio.inspect.gsub('"','').split('\r\n')
  end

  def edit_page
    @profile = Profile.where(user_id: current_user.id).first
  end

  def edit
    profile = Profile.where(user_id: current_user.id).first
    profile.first_name = params[:first_name] if params[:first_name] != ''
    profile.last_name = params[:last_name] if params[:last_name] != ''
    profile.dob = Date.civil(*params[:date].sort.map(&:last).map(&:to_i))
    profile.avatar = params[:avatar] if params[:avatar] != ''
    profile.bio = params[:bio] if params[:bio] != ''
    profile.save
    redirect_to action: 'edit_success'
  end
  def edit_success
    @params = params[:date]
    render('edit_success')
  end
end
