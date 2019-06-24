class TeamRolesController < ApplicationController
  before_action :find_team_role, only: [:edit, :update, :destroy]
  before_action :find_team, only: [:new, :create, :edit, :update, :destroy]

  def index
    @team_roles = TeamRole.all
  end

  def new
    @team_role = TeamRole.new
    if params[:user_id].present?
      @user = User.find(params[:user_id])
      @team_role.user = @user
    end
  end

  def create
    @team_role = TeamRole.new(team_role_params)
    @team_role.team = @team
    if @team_role.save
      redirect_to team_path(@team), notice: "#{@team_role.name} role has been added to the #{@team.name} team"
    else
      render :new
    end
  end

  def edit
    @team_role_skill = TeamRoleSkill.new
  end

  def update
    if @team_role.update(team_role_params)
      redirect_to team_path(@team), notice: "#{@team_role.name} role has been updated"
    else
      render :edit
    end
  end

  def destroy
    @team_role.destroy
    redirect_to team_path(@team), notice: "#{@team_role.name} role has been deleted from the #{@team.name} team"
  end

  private

  def team_role_params
    params.require(:team_role).permit(:name, :occupancy, :user_id)
  end

  def find_team_role
    @team_role = TeamRole.find(params[:id])
  end

  def find_team
    @team = Team.find(params[:team_id])
  end
end
