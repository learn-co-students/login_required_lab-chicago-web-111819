class SecretsController < ApplicationController

    def show
        if session[:name] == '' || session[:name] == nil
            redirect_to sessions_new_path
        end
    end
end