class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path
        flash[:success] = "You have successfully signed in."

      end
    else
      redirect_to signin_path
      flash[:error] = "Invalid email/password."
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end
