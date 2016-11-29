class UsersController < ApplicationController
  def index
    @Users = User.all

    render("users/index.html.erb")
  end

  def show_user_photos
    @user = User.find(params[:id])
    @user_photos = @user.photos

  end

end
