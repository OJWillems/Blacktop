class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user_1 = User.new
    @user_2 = User.new
  end

  def create
    @user_1 = User.create(user_params)
    @user_2 = User.create(user_params)
    redirect_to new_team_path
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :wins, :losses, :smack_talk, :budget)
  end

end
