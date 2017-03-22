class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(clean_params)
    if @user.save
      redirect_to root_path
      flash[:success] = "You have successfully signed up."
    else
      # render :new
      flash[:error] = "Fatal error."
    end
  end

  private

  def clean_params
    params.permit(:name, :email, :password)
  end

end
