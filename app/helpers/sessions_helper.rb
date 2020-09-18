module SessionsHelper
  # logs in the user
  def log_in(user)
    session[:user_id] = user.id
  end

  # returns the currently logged in user (if any)
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end
