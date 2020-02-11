class ContentCreatorsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :content_creator_specific, only: [ :show, :update, :edit, :destroy]

  def show
  end

  def edit
  end

  def update
    @content_creator.update 
    redirect_to content_creator_path(@content_creator)
  end

  def destroy
    @content_creator.destroy
    redirect_to content_creators_path
  end

  def new
    @content_creator = ContentCreator.new
  end

  def create
    @content_creator = ContentCreator.create(content_creator_params)
    if @content_creator.valid?
      redirect_to '/welcome'
    else
      flash[:errors] = @content_creator.errors.full_messages
      redirect_to new_content_creator_path
    end
    # byebug
    session[:content_creator_id] = @content_creator.id
  end



private 
 
  def content_creator_specific
    @content_creator = ContentCreator.find(params[:id])
  end

  def content_creator_params
    params.require(:content_creator).permit(:profile_name, :bio, :username, :password_digest)
  end

end
