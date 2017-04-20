class UsersController < ApplicationController

  def index
    # if user_signed_in? == true
    #   redirect_to "welcome/index"
    # end
  end


  def sign_in
    render 'devise/session'
  end

end
