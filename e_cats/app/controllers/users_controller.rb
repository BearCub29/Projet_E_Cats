class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
  end
  def edit
  end
  def update
    @user = current_user
      user_update = params.require(:user).permit(:first_name, :last_name, :description, :zip_code , :city)
      if @user.update(user_update)
        redirect_to edit_user_path
        flash[:success] = "Les modifications sont bien prises en compte ;)"
      else
        render :edit
      end
  end
end
