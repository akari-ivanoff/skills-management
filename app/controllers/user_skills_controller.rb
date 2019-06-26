class UserSkillsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @userskills = UserSkill.all.select do |userskill|
      userskill.user == @user
    end
    @userskills = @userskills.sort_by{|userskill| -userskill.self_assessment}
  end

  def new
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.new
    # @user_skill.user = current_user
  end

  def create
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.new(userskill_params) # add on here
    @user_skill.user = @user
    if @user_skill.save
      flash[:success] = "updated"
    end
    raise
    redirect_to user_path(@user)
  end

  def edit
    @user_skill = UserSkill.find(params[:id])
    @user = @user_skill.user
  end

  def update
    @user_skill = UserSkill.find(params[:id])
    @user = @user_skill.user
    if @user_skill.update(userskill_params)
      flash[:success] = "updated"
      redirect_to user_user_skills_path(@user_skill.user)
    else
      render :edit
    end
  end

  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user_skill.destroy
    redirect_to user_user_skills_path(@user_skill.user)
  end

  def manager_assessment_update
    @user_skill = UserSkill.find(params[:id])
    if @user_skill.update(userskill_params_mgr)
      flash[:success] = "updated"
      redirect_to user_user_skills_path(@user_skill.user) # user_path(@user) # user_skills_path
    else
      render :edit
    end
  end

  private

  def userskill_params
    params.require(:user_skill).permit(:skill_id, :self_assessment, :self_comment, :experience)
  end

  def userskill_params_mgr
    params.require(:user_skill).permit(:skill_id, :manager_assessment, :manager_comment)
  end

end
