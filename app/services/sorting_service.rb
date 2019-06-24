class SortingService

  # currently working for 3 inputs coming from pages#home and team_role_id search for placeholders.
  def initialize(queryskills)
  @query = queryskills
  end

  def sort
  # Return an array of User objects that match query.
    queryhits = []
    @query.each do |value|
      queryhits << User.search_user_by_skill(value)
    end
    queryhitsflat = queryhits.flatten

    # create hash containing User object and amount of query hits
    userhits = {}
    queryhitsflat.each do |user|
      key = user
      userhits[key] = queryhitsflat.count(user)
    end

    # create hash containing User object and amount of relevant stars
    userratings = {}
    counter = 0
    queryhitsflat.each do |user|
      key = user
        user.user_skills.each do |userskill|
          if @query.include? userskill.skill.name
            counter += userskill.self_assessment
          end
        end
      userratings[key] = counter
    end

    # merge hashes
    userstats = {}
    userhits.values
    userratings.values

    # prio 2: sort users on total self-assessment rating
    userhits2 = userhits.sort_by { |k, v| -userratings[k] }.to_h

    # prio 1: sort users on number of skills that match query
    @users = userhits2.sort_by { |k, v| -v }.to_h.keys
  end
end

 #   end

  # TO DO add grouping on skill rating

    # fetch User self-assessment for query hits (or all queries)
   # userscores_skill1 = []
   # userhits.keys.each do |hit| #CHANGE TO HASH
   # UserSkill.where(user_id: hit.id, skill_id: Skill.find_by(name: params[:query][:skill1]).id).first.self_assessment
   # userscores << hit.user_skills.find_by(user_skill.skill.name: "Javascript").self_assessment
   # end
   # create hash containing User ID and stars



