class PostsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def create
    @post = Post.new(clean_params)
    # @post = @current_user
    @post.user_id = @current_user.id
    @post.username = @current_user.name
    if @post.save
      redirect_to root_path
      flash[:success] = "Your post is created."
    else
      redirect_to root_path
      flash[:error] = "Fatal error."
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    # @post.user_id = @current_user.id
    # @post.username = @current_user.name
    @post.update_attributes(update_params)
    if @post.save
      redirect_to root_path
      flash[:success] = "Your post is updated."
    else
      redirect_to root_path
      flash[:error] = "Fatal error."
    end
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to root_path
    flash[:success] = "Your post is deleted."
  end

  private

  def clean_params
    params.permit(:message, :image, :video, :username)
  end

  def update_params
    params.require(:post).permit(:message, :image, :video, :username)
  end

end

# post.errors.full_messages to check full error messages

# ADDITIONAL FEATURES YOU SHOULD PROBABLY ADD LATER ON
# => set parameters for URL links
#   -> If they render nothing, don't post them and flash an error notice
