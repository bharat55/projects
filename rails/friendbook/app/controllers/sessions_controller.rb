class SessionsController < ApplicationController
  before_action :user_logged_in?,only:[:new]

  def new

  end
  def create
    @email = params[:email]
    @password = params[:password]
    @user = User.find_by(email:@email)
    if @user && @user.authenticate(@password)
      session[:user_id] = @user.id
      if session[:intended_path]
        redirect_to session[:intended_path]
      else
        redirect_to @user
      end
    else
      flash.now[:error] = "invalid email/password"
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    session[:intended_path] = nil
    flash[:notice] = "loged out successfully"
    redirect_to new_sessions_path
  end

  private
  def user_logged_in?
     if current_user
       redirect_to user_path(current_user)
     else
      render :new
    end
  end

end
