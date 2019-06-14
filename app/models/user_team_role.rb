class UserTeamRole < ApplicationRecord
  belongs_to :team_role
  belongs_to :user
end
