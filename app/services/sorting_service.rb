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
    resultsarray = []

    userhits.keys.each do |key|
      resultsarray << [key, userhits[key], userratings[key]]
    end

    # below works, could also group
    resultsarraysorted = resultsarray.sort_by { |a| [-a[2]] }
    resultsarraysorted2 = resultsarraysorted.sort_by { |a| [-a[1]] }

    @users = resultsarraysorted2.map {|column| column[0]}
    end
end
