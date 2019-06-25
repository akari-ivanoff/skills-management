class Skill < ApplicationRecord
  include PgSearch
  belongs_to :skill_category
  has_many :user_skills, dependent: :destroy
  has_many :team_role_skills, dependent: :destroy
  has_many :users, through: :user_skills # in order to show all users with a particular skill
  has_many :team_roles, through: :team_role_skills # in order to show all placeholders in need of a particular skill
  has_many :team, through: :team_roles # in order to show all teams that are working with a skill
  validates :name, presence: true, uniqueness: true
  # validates :description

  pg_search_scope :search_by_skillname, against: :name




end

