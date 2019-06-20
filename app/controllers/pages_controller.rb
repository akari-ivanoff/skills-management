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
end
end
