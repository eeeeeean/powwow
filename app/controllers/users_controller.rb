class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = current_user
    @users = User.all
  end

  def new

  end

  def show
    @userProfile = User.find(params[:id])
    @user = current_user
  end

  def destroy
    @user = current_user
    after_sign_out_path_for @user
  end
end