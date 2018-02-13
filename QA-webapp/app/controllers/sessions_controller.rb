class SessionsController < ApplicationController
  def new
    @login_error_message = flash[:login_error_message]
  end
  
  def create
    @user = User.new(params.require(:user).permit(:username, :password))
    if @user.authenticate
      session[:user_username] = @user.username
      redirect_to sessions_success_path
    else
      flash[:login_error_message] = "Error in login, try again"
      redirect_to sessions_new_path
    end
  end
  
  def success
    @name = session[:user_username]
  end
end
