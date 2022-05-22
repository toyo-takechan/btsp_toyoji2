module ApplicationHelper

  def log_in(user)
   session[:user_id] = user.id
  end

  def current_user
    session[:user_id] = user.id
  end

  def log_in?
    !current_user.nil?
  end
end
