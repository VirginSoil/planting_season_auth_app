class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Thanks, #{@user.full_name}, for Signing Up!"
      redirect_to gardens_path
    else
      flash.notice = "There was an error with your
        information. Please ensure all of the required fields are filled out."
      render 'home/login_signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :full_name, :email, :phone, :password, :password_confirmation)
  end
end
