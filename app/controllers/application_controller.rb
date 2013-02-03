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

  private

end
