class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :user_specific, only: [ :show, :update, :edit, :destroy]

  def show
  end

  def edit
  end

  def update
    @user.update 
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to '/welcome'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
    session[:user_id] = @user.id
  end



private 
 
  def user_specific
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :bio, :password)
  end

end
