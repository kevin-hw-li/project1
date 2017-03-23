class FriendshipsController < ApplicationController

  def create
    @friendship = @current_user.friendships.new(:friend_id => params[:friend_id])
    if @friendship.save
      redirect_to root_path
      flash[:success] = "Successfully added a friend."
    else
      redirect_to users_path
      flash[:error] = "Failed to add friend."
    end
  end

  def destroy
    @friendship = @current_user.friendships.find(params[:id]).destroy
    redirect_to root_path
    flash[:success] = "Successfully removed a friend."
  end

end
