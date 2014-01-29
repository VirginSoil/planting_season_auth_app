class UsersController < ApplicationController

  def create 
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Thanks, #{@user.full_name}, for Signing Up!"
      redirect_to gardens_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :full_name, :email, :phone, :password, :password_confirmation)
  end
end
