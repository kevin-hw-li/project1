class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(clean_params)
    if @user.save
      redirect_to signin_path
      flash[:success] = "You have successfully signed up."
    else
      redirect_to signup_path
      flash[:error] = "Try another Email or Username."
    end
  end

  private

  def clean_params
    params.permit(:name, :email, :password)
  end

end
