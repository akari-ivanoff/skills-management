class PagesController < ApplicationController
  def home
    @skills = Skill.all.order(name: :asc)
    render layout: "home"
  end

  def index
    @skills = Skill.all.order(name: :asc)

    # if params.dig(:query, :team_role_id).present?
    #   @team_role = TeamRole.find(params.dig(:query, :team_role_id))
    # end
    # raise
    if params[:query].present?
      if params["query"].kind_of?(Array) # if search is done via Select2
        @queryskills = params[:query]
      elsif params[:query][:team_role_id].present? # if search is done via placeholder
        @team_role = TeamRole.find(params[:query][:team_role_id])
        @queryskills = @team_role.skills.map { |skill| skill.name }
      end
    end
    if @queryskills.present? # if search is done in any way, start a new SortingService
      newsortservice = SortingService.new(@queryskills).sort
      @users = newsortservice[0]
      @queryskills_pg = newsortservice[1]
    else
      @users = User.all # otherwise, show all users
      @team = Team.new # added in order to choose a team, when a match was found on results page (pages/index)
      @queryskills = Skill.all.map { |skill| skill.name }
      @queryskills_pg = []
    end
    render layout: "index"
  end

  def index2 # to be deleted if all works
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

  def stats
    @people = User.all.count
    @skills = Skill.all.count
    @team_roles = TeamRole.all.count
    @teams = Team.all.count
    @empty_count = TeamRole.all.select { |team_role| team_role.user.nil? }.count
    @allocation_rate
    @skills_pp = UserSkill.all.count / User.all.count
  end
end
