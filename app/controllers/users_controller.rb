class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:notice] = 'Updated successfully'
      redirect_to edit_user_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:time_zone)
  end
end
