class Skill < ApplicationRecord
  belongs_to :skill_category
  has_many :team_role_skills
  has_many :user_skills
  has_many :users, through: :user_skills # in order to show all users with a particular skill
  has_many :team_roles, through: :team_role_skills # in order to show all placeholders in need of a particular skill
  has_many :team, through: :team_roles # in order to show all teams that are working with a skill
  validates :name, presence: true, uniqueness: true
  # validates :description
end
