class TeamRole < ApplicationRecord
  belongs_to :team
  belongs_to :user, optional: true
  has_many :team_role_skills, dependent: :destroy
  has_many :skills, through: :team_role_skills
  validates :name, presence: true
  validates :team, presence: true
  validates :occupancy, presence: true, inclusion: { in: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100] }

  def self.occupancy_rates
    [20, 30, 40, 50, 60, 70, 80, 90, 100]
  end
end
