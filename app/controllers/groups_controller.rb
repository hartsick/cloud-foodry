class GroupsController < ApplicationController
  def new
    @group = Group.new
    @users = User.order(:first_name)
  end

  def create
    @group = Group.new(group_params)
    @group.save

    redirect_to @group
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:user_ids => [])
  end
end
