class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new(team_params)
  end

  def create
    @team = Team.new(team_params)
    @team = Team.save
  end

  def show

  end

  def edit

  end
end

private

def team_params
  params.require(:team).permit(:name, :site, :manager, :owner_contact)
end
