class GroupsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :right_user, except: :index

  def index
    @groups = Group.all
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

end