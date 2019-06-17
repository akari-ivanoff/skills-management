class TeamRolesController < ApplicationController
  def index
    @team_roles = TeamRole.all
  end

  # def new
  #   @team = Team.find()
  #   @team_role = TeamRole.new
  # end

  # def create
  #   @team = Team.find()
  #   @team_role = TeamRole.new(team_params)
  # end


end
