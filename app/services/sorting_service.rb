class SortingService

#currently working for 3 inputs coming from pages#home and team_role_id search for placeholders.
  def initialize(queryskills)
  @query = queryskills
  end

  def sort
  # Count hits per skill queried. Returns an array of Users that match query.
      queryhits = []
      @query.each do |value|
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

    @users = userhits.sort_by{|k,v|-v}.to_h.keys
  end
  # TO DO add grouping on skill rating

    # fetch User self-assessment for query hits (or all queries)
    # userscores_skill1 = []
    # userhits.keys.each do |hit| #CHANGE TO HASH
    # UserSkill.where(user_id: hit.id, skill_id: Skill.find_by(name: params[:query][:skill1]).id).first.self_assessment
    # userscores << hit.user_skills.find_by(user_skill.skill.name: "Javascript").self_assessment
    # end
    # create hash containing User ID and stars


end
