class UserSkillsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @userskills = @user.user_skills
  end

  def new
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.new
  end

  def create
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.new(userskill_params) # add on here
    @user_skill.user = @user
    if @user_skill.save
      flash[:success] = "updated"
    end
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.find(params[:id])
    if @user_skill.update(userskill_params)
      flash[:success] = "updated"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user_skill.destroy
  end

  def manager_assessment_update
    @user_skill = UserSkill.find(params[:id])
    if @user_skill.update(userskill_params_mgr)
      flash[:success] = "updated"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end
end

private
  def userskill_params
    params.require(:user_skill).permit(:skill_id, :self_assessment, :self_comment, :experience)
  end

  def userskill_params_mgr
    params.require(:user_skill).permit(:skill_id, :manager_assessment, :manager_comment, :experience)
  end
