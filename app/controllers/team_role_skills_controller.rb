class TeamRoleSkillsController < ApplicationController
  before_action :find_team_role_skill, only: [:destroy]
  before_action :find_team_role_and_team, only: [:create, :destroy]

  def create
    @team_role_skill = TeamRoleSkill.new(team_role_skill_params)
    @team_role_skill.team_role = @team_role
    if @team_role_skill.save
      respond_to do |format|
        format.html { redirect_to team_path(@team), notice: "#{@team_role_skill.skill.name} skill has been added to the #{@team_role.name} role" }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end

    else
      redirect_to team_path(@team), alert: "Unable to add an empty skill"
    end
  end

  def destroy
    @team_role_skill.destroy
    redirect_to team_path(@team), notice: "#{@team_role_skill.skill.name} skill has been deleted from the #{@team_role.name} role"
  end

  private

  def team_role_skill_params
    params.require(:team_role_skill).permit(:skill_id)
  end

  def find_team_role_skill
    @team_role_skill = TeamRoleSkill.find(params[:id])
  end

  def find_team_role_and_team
    @team_role = TeamRole.find(params[:team_role_id])
    @team = @team_role.team
  end
end
