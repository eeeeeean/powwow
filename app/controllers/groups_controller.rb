class GroupsController < ApplicationController

  def index

  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group].merge(:user_id => current_user.id))
    if @group.save
      flash[:notice] = 'Group created'
      redirect_to user_group_path(current_user.id, @group.id) #THIS
    else
      redirect_to user_group_path
    end
  end

  def show
    @group = Group.find(params[:id])
  end
end