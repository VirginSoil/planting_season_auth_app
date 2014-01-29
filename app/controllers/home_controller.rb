class HomeController < ApplicationController

  def index
  end

  def login_signup
    @user = User.new
  end
end
