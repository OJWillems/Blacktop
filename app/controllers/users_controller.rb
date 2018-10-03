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

    @user_1 = User.create(name_1: params[:user][:name_1], wins: 0, losses: 0, smack_talk_1: params[:user][:smack_talk_1], budget: 600)
    @user_2 = User.create(name_2: params[:user][:name_2], wins: 0, losses: 0, smack_talk_2: params[:user][:smack_talk_2], budget: 600)

    @team_1 = Team.create(team_name: @user_1.name_1, user_id: @user_1.id, game_id: 1)
    @team_2 = Team.create(team_name: @user_2.name_2, user_id: @user_2.id, game_id: 1)

    redirect_to '/players/team_1'
    
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
    params.require(:user).permit(:name_1, :name_2, :wins, :losses, :smack_talk_1, :smack_talk_2, :budget)
  end

end
