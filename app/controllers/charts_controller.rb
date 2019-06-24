class ChartsController < ApplicationController
  def most_common_skills
    hash = {}
    UserSkill.group(:skill).count.each do |skill, counter|
      hash[skill.name] = counter
    end
    result = hash.sort_by { |_name, counter| counter }.reverse.take(15)
    render json: result
  end

  def least_common_skills
    hash = {}
    UserSkill.group(:skill).count.each do |skill, counter|
      hash[skill.name] = counter
    end
    result = hash.sort_by { |_name, counter| counter }.take(15)
    render json: result
  end

  def occupation
    hash = {}
    User.all.each do |user|
      occupation = 0
      TeamRole.all.select { |team_role| team_role.user == user }.each do |user_role|
        occupation += user_role.occupancy
      end
      if hash.keys.include?(occupation)
        hash[occupation] += 1
      else
        hash[occupation] = 0
      end
    end
    render json: hash
  end
end
