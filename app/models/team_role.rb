class TeamRole < ApplicationRecord
  belongs_to :team
  has_many :user_team_roles
  has_many :team_role_skills
end
