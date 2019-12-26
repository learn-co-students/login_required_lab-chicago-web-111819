class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    redirect_to(login_path) unless current_user
  end

  def current_user
    # returns the name of the current user (FAILED - 1)
    # returns nil if nobody is logged in (FAILED - 2)
    if session_set
      return session[:name]
    end
  end

  def login_required
    if !current_user
      redirect_to(login_path)
    end
  end

  private
    def session_set
      return !session[:name].blank?
    end

end
