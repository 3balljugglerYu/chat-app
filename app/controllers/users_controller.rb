class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
      # redirect_to edit_user_registration_path
      # redirect_to edit_user_path
      # render :index
    else
      render :edit
      # render :index
      # redirect_to edit_user
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
