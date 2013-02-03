class GroupsController < ApplicationController

  def index

  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      flash[:notice] = 'Group created'
      redirect_to user_group_path(@group)
    else
      redirect_to user_groups_path(current_user)
    end
  end
end