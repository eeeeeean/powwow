class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = current_user
    @users = User.all
  end

  def new

  end

  def show
  end

  def destroy
  end
end