class Team < ApplicationRecord
  belongs_to :site
  belongs_to :manager, class_name: :User, foreign_key: :team_manager_id

  has_many :team_roles # to know which team roles are allocated in a team (current members + requests (team roles without assigned user))
  has_many :team_role_skills, through: :team_roles # to know the placeholder skillset ID in a team (real life: users to be found)
  has_many :skills, through: :team_role_skills # to know the placeholder skill names in a team (real life: users to be found)

  has_many :user_team_roles, through: :team_roles # to know the assigned user IDs  in a team (real life: already working users)
  has_many :users, through: :user_team_roles # to know the assigned users in a team (real life: already working users)

  validates :name, presence: true, uniqueness: true

  validates :owner_contact, presence: true
  # validates :description
  # validates :site_id
end
