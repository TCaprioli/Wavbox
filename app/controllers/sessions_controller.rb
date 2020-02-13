class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  

  def new

  end

  def create
    
    @user = User.find_by(username: params[:username])
    # byebug
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect_to '/welcome'
    else
      flash[:errors] = [ "We don't have a user with that username and password" ]
       redirect_to '/login'
    end
  end

  def login
  end

  def welcome
    @videos = Video.all
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/welcome'
  end
end
