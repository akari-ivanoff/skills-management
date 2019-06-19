class PagesController < ApplicationController
  def home
    render layout: "home"
  end

  def index
    query = [params[:query1], params[:query2], params[:query3]].join(" ")
    @users = query.present? ? User.search_user_by_skill(query) : User.all
    end

  # def fullname
  #   "#{user.first_name} #{user.last_name}"
  # end
end
