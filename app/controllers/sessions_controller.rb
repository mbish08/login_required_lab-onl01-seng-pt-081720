class SessionsController < ApplicationController

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to controller: 'sessions', action: 'new'
        else
            session[:name] = params[:name]
            redirect_to controller: 'application', action: 'hello'
        end
    end

    def new

    end

    def destroy
        session.delete :name
    end

end
