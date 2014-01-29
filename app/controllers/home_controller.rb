class HomeController < ApplicationController

  def index
  end

  def login_signup
    @user = User.new
  end

  def login
    user = User.find_by(:email => params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      flash[:success] = "Welcome back, #{user.full_name}!"
      redirect_to gardens_path
    else
      flash[:error] = "Email or Password Incorrect"
      redirect :back
    end
  end
end
