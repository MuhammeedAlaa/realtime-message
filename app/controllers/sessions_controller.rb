class SessionsController < ApplicationController
    def new
    end
    def create
        @user = User.find_by(username: params[:session][:username])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            flash[:success] = "You are logged in sucessfully"
            redirect_to root_path
        else
            flash.now[:error] = "You entered wrong credentials"
            render 'new'
        end   
    end
    def destroy
        session[:user_id] = nil
        flash[:success] = "You have logged out sucessfully"
        redirect_to login_path
    end
end