module ApplicationHelper

  def sign_out_link
    if signed_in?
      link_to destroy_user_session_path, method: :delete
    end
  end

  def not_a_member?
    Membership.find_by_user_id(current_user.id) == nil
  end
end
