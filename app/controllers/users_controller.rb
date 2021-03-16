class UsersController < ApplicationController
  def show
    # Scope users to only show users from the same group
    @user = current_user.group.users.find(params[:id])
  end

  def edit
  end

  def update
    if params[:user][:code]
      group_id = Group.find_by(code: params[:user][:code])&.id
      current_user.update(group_id: group_id)
    else
      current_user.update(user_params)
    end

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
