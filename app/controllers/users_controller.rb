class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def index
    @users = User.all.order("first_name ASC")
    render layout: "index"
  end

  # def fullname
  #   return "#{user.first_name} #{user.last_name}".join
  # end

  def show
    @user = User.find(params[:id])
    @userskills = UserSkill.all.select do |userskill|
      userskill.user == @user
    end
     @userskills = @userskills.sort_by{|userskill| - userskill.self_assessment}
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "The profile has been updated"
    else
      flash[:alert] = 'Unable to update the profile'
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :network_id, :job_title, :chapter, :availability, :manager_id, :is_manager, :photo, :site_id)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
