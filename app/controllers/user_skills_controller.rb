class UserSkillsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @user_skills = @user.skills # not working?
  end

  def new
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.new
  end

  def create
    @user = User.find(params[:user_id])
    @user_skill = UserSkill.new
    @user_skill.user = @user
    if @user_skill.save
      flash[:success] = "updated"
    end
    redirect_to user_path(@user)
  end
end
