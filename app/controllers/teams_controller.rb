class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path
    else
      render :new
    end
  end

  def show
    @team_role_skill = TeamRoleSkill.new #check with Mike
  end

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def team_params
    params.require(:team).permit(:name, :description, :owner_contact, :team_manager_id, :site_id)
  end

  def find_team
    @team = Team.find(params[:id])
  end
end
