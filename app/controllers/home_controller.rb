class HomeController < ApplicationController

  def index
  end

  def login_signup
    @user = User.new
  end

  def login
    user = User.find_by(:email => params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      cookies[:flash] = "Welcome back, #{user.full_name}!"
      cookies[:user_id] = user.id
      cookies[:username] = user.full_name
      redirect_to '/dashboard'
    else
      flash[:error] = "Email or Password Incorrect"
      redirect_to :back
    end
  end
end
