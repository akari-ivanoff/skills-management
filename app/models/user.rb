class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :site
  belongs_to :manager, class_name: :User, foreign_key: :manager_id, optional: true
  has_many :teams, foreign_key: :team_manager_id
  has_many :user_team_roles
  has_many :team_roles, through: :user_team_roles
  has_many :team_role_skills, through: :team_roles
  has_many :teams, through: :team_roles
  has_many :user_skills
  has_many :skills, through: :user_skills

  def employees
    is_manager ? User.where(manager_id: id) : []
  end
end
