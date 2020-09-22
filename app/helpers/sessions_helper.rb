module SessionsHelper
  # logs in the user
  def log_in(user)
    session[:user_id] = user.id
  end

  # remembers the user
  def remember(user)
	user.remember
	cookies.permanent.encrypted[:user_id] = user.id
	cookies.permanent[:remember_token] = user.remember_token
  end

  # forgets a user
  def forget(user)
	user.forget
	cookies.delete(:user_id)
	cookies.delete(:remember_token)
  end

  # returns the currently logged in user (if any)
  def current_user
	if (user_id = session[:user_id])
	  @current_user ||= User.find_by(id: user_id)
	elsif (user_id = cookies.encrypted[:user_id])
	  user = User.find_by(id: user_id)
	  if user && user.authenticated?(cookies[:remember_token])
		log_in user
        @current_user = user
	  end
	end
  end

  # returns bool if a user is logged in
  def logged_in?
    !current_user.nil?
  end

  # logs out current user
  def log_out
	forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
end
