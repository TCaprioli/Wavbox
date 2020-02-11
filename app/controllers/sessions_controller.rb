class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new

  end

  def create
    @viewer = Viewer.find_by(account_name: params[:account_name])
    @content_creator = ContentCreator.find_by(username: params[:username])
    # byebug
    if @content_creator && @content_creator.authenticate(params[:password])
       sessions[:user_id] = @content_creator.id
       redirect_to '/welcome'
    else
       redirect_to '/login'
    end

    if @viewer && @viewer.authenticate(params[:password])
      sessions[:user_id] = @viewer.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def login
  end

  def welcome
  end
end
