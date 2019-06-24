class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.order(name: :asc)
    @placeholder = true
    @team_roles = TeamRole.all
    if params[:user_id].present?
      @user = User.find(params[:user_id])
    end
  end

  def new
    @team = Team.new
    if params[:user_id].present?
      @user = User.find(params[:user_id])
    elsif params[:placeholder]
      @placeholder = true
    end
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      if params[:user_id].present?
        redirect_to teams_path(user_id: User.find(params[:user_id]), notice: "#{@team.name} team has been created")
      elsif params[:placeholder]
        redirect_to teams_path(placeholder: true, notice: "#{@team.name} team has been created")
      else
        redirect_to teams_path, notice: "#{@team.name} team has been created"
      end
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
      redirect_to team_path(@team), notice: "#{@team.name} team has been updated"
    else
      render :edit
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path, notice: "#{@team.name} team has been deleted"
  end

  private

  def team_params
    params.require(:team).permit(:name, :description, :owner_contact, :team_manager_id, :site_id)
  end

  def find_team
    @team = Team.find(params[:id])
  end
end
