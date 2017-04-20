class UsersController < ApplicationController

  def index

  end


  def sign_in
    render 'devise/session'
  end

end
