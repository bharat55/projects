class ApplicationController < ActionController::Base
  helper_method :current_user
  def required_signin
     unless current_user
      flash[:error] = "You need to loged in first!!!!"
      redirect_to new_sessions_path
    end
  end



  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
end
