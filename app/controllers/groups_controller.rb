class GroupsController < ApplicationController
  def show
    @group = Group.find params[:id]
  end

  def edit
    @group = Group.find params[:id]
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.code = SecureRandom.hex(3)

    if @group.save
      current_user.group = @group
      current_user.save

      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def update
    @group = Group.find(params[:id])

    if @group.update(group_params)
      redirect_to group_path(@group)
    else
      render :edit
    end
  end

  private
    def group_params
      params.require(:group).permit(:name)
    end
end
