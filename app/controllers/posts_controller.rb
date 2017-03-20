class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(clean_params)
    if @post.save
      flash[:success] = "Your post is created."
    else
      flash[:error] = "Fatal error."
    end
  end

  def clean_params
    params.require(:post).permit(:message, :image, :video)
  end
end
