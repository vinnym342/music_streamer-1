class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def after_sign_in_path_for(resource_or_scope)

    if Profile.exists?(:user_id => current_user.id)
      welcome_index_path
    else
      profile_create_page_path
    end

  end

end
