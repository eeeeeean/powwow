module ApplicationHelper

  def sign_out_link
    if signed_in?
      link_to destroy_user_session_path, method: :delete
    end
  end
end
