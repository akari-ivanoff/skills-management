class TeamRolesController < ApplicationController
  before_action :find_team_role, only: [:show, :edit, :update, :destroy]
  before_action :find_team, only: [:new, :create, :show, :edit, :update, :destroy]

  def index
    @team_roles = TeamRole.all
  end

  def new
    @team_role = TeamRole.new
  end

  def create
    @team_role = TeamRole.new(team_role_params)
    @team_role.team = @team
    if @team_role.save
      redirect_to team_team_role_path(@team, @team_role)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @team_role.update(team_role_params)
      redirect_to team_team_role_path(@team, @team_role)
    else
      render :edit
    end
  end

  def destroy
    @team_role.destroy
    redirect_to team_path(@team)
  end

  private

  def team_role_params
    params.require(:team_role).permit(:name, :occupancy)
  end

  def find_team_role
    @team_role = TeamRole.find(params[:id])
  end

  def find_team
    @team = Team.find(params[:team_id])
  end
end
