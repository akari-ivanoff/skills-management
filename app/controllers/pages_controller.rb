class PagesController < ApplicationController
  def home
    @skills = Skill.all.order(name: :asc)
    render layout: "home"
  end

  def index
    #query = [params[:query1], params[:query2], params[:query3]].join(" ") # returns a string
    query = params[:query].values
    if query.present?
    # Count hits per skill queried. Returns an array of Users that match query.
      queryhits = []
      query.each do |value|
        queryhits << User.search_user_by_skill(value)
      end
      queryhitsflat = queryhits.flatten

    # create hash containing User object and amount of query hits
    userhits = {}
    queryhitsflat.each do |item|
      key = item
      userhits[key] = queryhitsflat.count(item)
    end

    # sorting users on maximum skill hit

    userhits_sorted = userhits.sort.to_h
    @users = userhits_sorted.keys
    else
      @users = User.all

    # TO DO add grouping on skill rating

    # fetch User self-assessment for query hits (or all queries)
    # userscores_skill1 = []
    # userhits.keys.each do |hit| #CHANGE TO HASH
    # UserSkill.where(user_id: hit.id, skill_id: Skill.find_by(name: params[:query][:skill1]).id).first.self_assessment
    # userscores << hit.user_skills.find_by(user_skill.skill.name: "Javascript").self_assessment
    # end
    # create hash containing User ID and stars
  end
end
end
