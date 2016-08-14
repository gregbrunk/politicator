module SessionsHelper
  # Login helper methods for sessions management
  
  # Login the user
  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  # Identify the logged in user if logged in
  def current_user
    user = session[:user_id]
    if user != nil
      @current_user ||= User.find(session[:user_id])
    end
  end

  # Check if user is logged in
  def logged_in?
    if current_user == nil
      redirect_to "/sign_in"
    end
  end

  # Log the user out
  def logout
    @current_user = session[:user_id] = nil
  end
end
