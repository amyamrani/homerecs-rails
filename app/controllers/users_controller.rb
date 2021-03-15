class UsersController < ApplicationController
  def update
    current_user.update!(user_params)

    if current_user.group
      redirect_to group_path(current_user.group_id)
    else
      redirect_to dashboard_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:group_id)
    end
end
