class SessionsController < ApplicationController
  
  # Login
  def new
    @user = User.new
    render :new
  end

  # Create New Session on Login
  def create
    user_params = params.require(:user).permit(:email, :password)
    @user = User.confirm(user_params)
    if @user
      login(@user)
      redirect_to profile_path
    else
      redirect_to "/sign_in"
    end
  end

  # Destroy Session on Logout
  def destroy
    current_user
    logout
    redirect_to "/"
  end
end
