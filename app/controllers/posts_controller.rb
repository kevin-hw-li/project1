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
      flash[:error] = "Fatal error."
      redirect_to root_path
    end
  end

  private

  def clean_params
    params.permit(:message, :image, :video, :username)
  end

end

# post.errors.full_messages to check full error messages

# ADDITIONAL FEATURES YOU SHOULD PROBABLY ADD LATER ON
# => set parameters for URL links
#   -> If they render nothing, don't post them and flash an error notice
