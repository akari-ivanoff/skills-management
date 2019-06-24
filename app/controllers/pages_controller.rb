class PagesController < ApplicationController
  def home
    @skills = Skill.all.order(name: :asc)
    render layout: "home"
  end

  def index
    if params[:query][:team_role_id].present? # if search is done via placeholder
      query = TeamRole.find(params[:query][:team_role_id])
      @queryskills = query.skills.map { |skill| skill.name }
    else
      @queryskills = params[:query].values # if search is done via triple search fields
    end

    if @queryskills.present? # if search is done in any way, fire up the SortingService
      @users = SortingService.new(@queryskills).sort
    else
      @users = User.all # otherwise, show all users
      @team = Team.new # added in order to choose a team, when a match was found on results page (pages/index)
    end
  end
end
