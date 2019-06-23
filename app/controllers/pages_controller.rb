class PagesController < ApplicationController
  def home
    @skills = Skill.all.order(name: :asc)
    render layout: "home"
  end

  def index
    query = params[:query].values
    if query.present?
      @users = SortingService.new(query).sort
    else
      @users = User.all
    end

    @team = Team.new # added in order to choose a team, when a match was found on results page (pages/index)
  end
end
