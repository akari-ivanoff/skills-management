class SkillsController < ApplicationController
  def index
    # @skills = Skill.all
    @skills = Skill.all.order("name ASC")
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skills_params)
    if @skill.save
      redirect_to skills_path, notice: "#{@skill.name} skill has been added"
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skills_params)
      redirect_to skills_path, notice: "#{@skill.name} skill has been updated"
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path, notice: "#{@skill.name} skill has been deleted"
  end

  private

  def skills_params
    params.require(:skill).permit(:name, :description, :skill_category_id)
  end
end
