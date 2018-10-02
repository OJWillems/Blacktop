class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create

    @user_1 = User.create(name: params[:user][:name], wins: 0, losses: 0, smack_talk: params[:user][:smack_talk], budget: 600)
    @user_2 = User.create(name: params[:user][:wins], wins: 0, losses: 0, smack_talk: params[:user][:losses], budget: 600)

    @team_1 = Team.create(user_id: @user_1.id, game_id: 1)
    @team_2 = Team.create(user_id: @user_2.id, game_id: 1)
    #test to see what this redirects to
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
