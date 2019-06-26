class UserSkillsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @user_skills = @user.user_skills.sort_by { |user_skill| -user_skill.self_assessment }
  end

  def new
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.new
  end

  def create
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.new(user_skill_params) # add on here
    @user_skill.user = @user
    if @user_skill.save
      redirect_to user_path(@user), notice: "The skill has been added"
    else
      flash[:alert] = 'Unable to add the skill'
      render :new
    end
  end

  def edit
    @user_skill = UserSkill.find(params[:id])
    @user = @user_skill.user
  end

  def update
    @user_skill = UserSkill.find(params[:id])
    @user = @user_skill.user
    if @user_skill.update(user_skill_params)
      redirect_to user_path(@user), notice: "The skill has been updated"
    else
      flash[:alert] = 'Unable to update the skill'
      render :edit
    end
  end

  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user = @user_skill.user
    @user_skill.destroy
    redirect_to user_path(@user), notice: "The skill has been deleted"
  end

  def manager_assessment_update
    @user_skill = UserSkill.find(params[:id])
    @user = @user_skill.user
    if @user_skill.update(user_skill_params_mgr)
      redirect_to user_path(@user), notice: "The manager's assesment of the skill has been updated"
    else
      flash[:alert] = 'Unable to update the skill'
      render :edit
    end
  end

  private

  def user_skill_params
    params.require(:user_skill).permit(:skill_id, :self_assessment, :self_comment, :experience)
  end

  def user_skill_params_mgr
    params.require(:user_skill).permit(:skill_id, :manager_assessment, :manager_comment)
  end
end
