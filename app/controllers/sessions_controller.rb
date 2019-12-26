class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      return redirect_to(login_path)
    end

    # set :name in session if given
    session[:name] = params[:name]
    redirect_to(root_path)

  end

  def destroy
    if session_set
      session.delete :name
      redirect_to(root_path)
    end
  end

end
