class ApplicationController < ActionController::Base
  protect_from_forgery

  def right_user
    user = User.find(params[:user_id])
    if current_user == user
      return true
    else
      sign_out
      redirect_to new_user_session_path
    end
  end

  def make_self_member(group)
    Membership.new(:user_id   => current_user.id,
                   :group_id  => group.id).save!
  end

  def a_member?
    Membership.find_by_user_id(current_user.id) != nil
  end
end
