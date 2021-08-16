class UsersController < ApplicationController
    before_action :logged_in_redirect, only: [:new, :create]

    def new
    end
    def create
        @user = User.new(username: params[:user][:username], password: params[:user][:password])
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "You are logged in sucessfully"
            redirect_to root_path
        else
            render 'new'
        end   
    end
    private 
    def logged_in_redirect
        if logged_in?
            flash[:error] = "You are aleardy logged in !"
            redirect_to root_path
        end
    end
end