class ApplicationController < ActionController::Base
  protect_from_forgery


  def make_self_member(group)
    Membership.new(:user_id   => current_user.id,
                   :group_id  => group.id).save!
  end

  def a_member?
    Membership.find_by_user_id(current_user.id) != nil
  end
end
