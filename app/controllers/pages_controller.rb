class PagesController < ApplicationController
  def home
    render layout: "home"
  end

  def index
   query = params[:query]
   @users = query.present? ? User.global_search(query) : User.all
  end

  # def fullname
  #   "#{user.first_name} #{user.last_name}"
  # end
end
