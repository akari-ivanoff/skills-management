class SkillsController < ApplicationController
  def index
    @skills = Skill.all.order("name ASC")
  end

  def new
    @user = current_user
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skills_params)
    @skill.save
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skills_params)
      redirect_to skills_path
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
  end

# def show
# end


private
  def skills_params
    params.require(:skill).permit(:name, :description, :skill_category_id)
  end
end
