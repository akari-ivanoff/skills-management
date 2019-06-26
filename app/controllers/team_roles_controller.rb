class TeamRolesController < ApplicationController
  before_action :find_team_role, only: [:edit, :update, :destroy]
  before_action :find_team, only: [:new, :create, :edit, :update, :destroy]

  def index
    @team_roles = TeamRole.all.order(updated_at: :desc)
    render layout: "home"
  end

  def replace
    @team_role = TeamRole.find(params[:id])
    @user = User.find(params[:user_id])
    @team_role.user = @user
    @team_role.save
    redirect_to team_path(@team_role.team)
  end

  def new
    @team_role = TeamRole.new
    @query_array = params[:query_array]
    if params[:user_id].present?
      @user = User.find(params[:user_id])
      @team_role.user = @user
    end
  end

  def create
    @team_role = TeamRole.new(team_role_params)
    @user = User.find(params.dig(:team_role, :user_id))
    @team_role.team = @team
    if @team_role.occupancy > 100 - @user.occupation
      flash[:alert] = "#{@user.first_name} #{@user.last_name} is available only for #{100 - @user.occupation}% of time."
      render :new
    else
      if @team_role.save
        if params[:query_array].present?
          params[:query_array].split("\%\%\%").each do |searched_skill|
            skill = Skill.find_by(name: searched_skill)
            TeamRoleSkill.create(team_role: @team_role, skill: skill)
          end
        end
        redirect_to team_path(@team, query_array: params[:query_array]), notice: "#{@team_role.name} role has been added to the #{@team.name} team"
      else
        flash[:alert] = 'Unable to create the role'
        render :new
      end
    end
  end

  def edit
    @team_role_skill = TeamRoleSkill.new
  end

  def update
    @user = User.find(params.dig(:team_role, :user_id))
    if @team_role.occupancy > 100 - @user.occupation
      flash[:alert] = "#{@user.first_name} #{@user.last_name} is available only for #{100 - @user.occupation}% of time."
      render :edit
    else
      if @team_role.update(team_role_params)
        redirect_to team_path(@team), notice: "#{@team_role.name} role has been updated"
      else
        flash[:alert] = 'Unable to update the role'
        render :edit
      end
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
