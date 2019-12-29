class SessionsController < ApplicationController
    # before_action :login_required

    def new

    end

    def create
        session[:name] = params[:name]
        if !session[:name] or session[:name] == ''
            redirect_to login_path
        else
            redirect_to secret_path
        end
    end

    def destroy
        session.delete :name
    end

    

end
