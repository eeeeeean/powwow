class GroupsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :right_user

  def index
    @groups = Group.find_all_by_user_id(params[:user_id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      make_self_member(@group)
      flash[:notice] = 'Group created'
      redirect_to user_group_path(current_user.id, @group.id) #THIS
    else
      flash[:notice] = 'Group could not be created'
      redirect_to new_user_group_path(current_user.id)
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def make_self_member(group)
    Membership.new(user_id: current_user.id, group_id: group.id).save!
  end
end