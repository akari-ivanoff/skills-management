class ChartsController < ApplicationController
  def most_common_skills
    result = user_skills_hash.sort_by { |_name, counter| counter }.reverse.take(30)
    render json: result
  end

  def least_common_skills
    result = user_skills_hash.sort_by { |_name, counter| counter }.take(30)
    render json: result
  end

  def occupation
    hash = {}
    User.all.each do |user|
      occupation = user.occupation
      counter(hash, occupation)
    end
    render json: hash
  end

  def empty_positions
    empty_count = TeamRole.all.select { |team_role| team_role.user.nil? }.count
    taken_count = TeamRole.all.count - empty_count
    hash = { "Empty positions" => empty_count, "Taken positions" => taken_count }
    render json: hash
  end

  def most_needed_skills
    hash = {}
    empty_team_role_skills.each do |team_roles_skill|
      skill_name = team_roles_skill.skill.name
      counter(hash, skill_name)
    end
    result = hash.sort_by { |_name, counter| counter }.reverse.take(10)
    render json: result
  end

  def less_needed_skills
    hash = {}
    empty_team_role_skills.each do |team_roles_skill|
      skill_name = team_roles_skill.skill.name
      counter(hash, skill_name)
    end
    result = hash.sort_by { |_name, counter| counter }.take(10)
    render json: result
  end

  private

  def user_skills_hash
    hash = {}
    UserSkill.group(:skill).count.each do |skill, counter|
      hash[skill.name] = counter
    end
    return hash
  end

  def counter(hash, key)
    if hash.keys.include?(key)
      hash[key] += 1
    else
      hash[key] = 1
    end
    return hash
  end

  def empty_team_role_skills
    team_role_skills = []
    TeamRole.all.select { |team_role| team_role.user.nil? }.each do |team_role|
      team_role_skills += TeamRoleSkill.select { |team_role_skill| team_role_skill.team_role == team_role }
    end
    return team_role_skills
  end
end
