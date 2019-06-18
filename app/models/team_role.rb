class TeamRole < ApplicationRecord
  belongs_to :team
  belongs_to :user, optional: true
  has_many :team_role_skills

  validates :name, presence: true
  validates :team, presence: true
  validates :occupancy, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, allow_empty: false
end
