class SessionsController < ApplicationController
  def new
    @login_error_message = flash[:login_error_message]
  end
  
  def create
    @user = User.new(params.require(:user).permit(:username, :password))
    if @user.authenticate
      session[:current_user_username] = @user.username
      session[:current_user_id] = @user.id
      redirect_to sessions_success_path
    else
      flash[:login_error_message] = "Error in login, try again"
      redirect_to sessions_new_path
    end
  end
  
  def destroy
    session[:current_user_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to home_path
  end
  
  def success
    @name = session[:current_user_username]
  end
end
