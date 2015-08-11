class GroupsController < ApplicationController
  def new
    @users = User.order(:first_name)
  end

  def create
  end
end
