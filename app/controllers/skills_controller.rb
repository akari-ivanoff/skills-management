class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @user = current_user
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skills_params)
    @skill.save
    raise
  end

private
  def skills_params
    params.require(:skill).permit(:name, :description, :skill_category)
  end
end
