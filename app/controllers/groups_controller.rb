class GroupsController < ApplicationController

  def index
    @groups = Group.find_all_by_user_id(params[:user_id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
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