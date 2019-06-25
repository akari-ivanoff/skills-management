class SortingService

  # currently working for 3 inputs coming from pages#home and team_role_id search for placeholders.
  def initialize(queryskills)
  @query = queryskills
  end

  def sort
  # Return an array of User objects that match query.
    queryhits = []
    query_skills = []
    @query.each do |value|
      queryhits << User.search_user_by_skill(value)
      query_skills << Skill.search_by_skillname(value)
    end
    queryhitsflat = queryhits.flatten
    query_skillsflat = query_skills.flatten
    # create hash containing User objects and amount of query hits
    userhits = {}
    queryhitsflat.each do |user|
      key = user
      userhits[key] = queryhitsflat.count(user)
    end

    # create array containing Skill objects found by PgSearch
    queryskills_pg = []
    query_skillsflat.each do |skill|
      queryskills_pg << skill.name
    end

    # create hash containing User objects and amount of relevant stars
    userratings = {}
    queryhitsflat.each do |user|
      counter = 0
      key = user
        user.user_skills.each do |userskill|
          if queryskills_pg.include? userskill.skill.name
            counter += userskill.self_assessment
          end
        end
      userratings[key] = counter
    end

    # merge hashes
    resultsarray = []

    userhits.keys.each do |key|
      resultsarray << [key, userhits[key], userratings[key]]
    end

    # below works, could also group
    resultsarraysorted = resultsarray.sort_by { |a| [-a[2]] }
    resultsarraysorted2 = resultsarraysorted.sort_by { |a| [-a[1]] }

    @users = resultsarraysorted2.map {|column| column[0]}
    array = [@users, queryskills_pg]
    end
end
