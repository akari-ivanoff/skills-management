class User < ApplicationRecord
  include PgSearch
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :site
  belongs_to :manager, class_name: "User", foreign_key: :manager_id, optional: true
  has_many :managed_teams, class_name: "Team", foreign_key: :team_manager_id, dependent: :destroy
  has_many :team_roles, dependent: :destroy
  # has_many :team_role_skills, through: :team_roles
  has_many :teams, through: :team_roles
  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :network_id, presence: true, uniqueness: true
  validates :job_title, presence: true
  validates :chapter, presence: true
  validates :availability, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, allow_empty: false
  validates :is_manager, inclusion: { in: [true, false] }
  validates :site, presence: true
  validate :verify_manager
  validates :gender, inclusion: { in: [nil, "M", "F"]}

  mount_uploader :photo, PhotoUploader

  def verify_manager
    if self.job_title != "Chapter Lead" && manager.nil?
      errors.add(:manager, "This user needs a manager because the job title is different from the 'Chapter Lead'.")
    end
  end

  def fullname
    "#{first_name} #{last_name}"
  end

  def employees
    is_manager ? User.where(manager_id: id) : []
  end

  def occupation
    occupation_sum = 0
    team_roles.each do |user_role|
      occupation_sum += user_role.occupancy
    end
    return occupation_sum
  end

  pg_search_scope :search_user_by_skill,
    associated_against: { skills: [:name] }
    # ,using: { :tsearch { prefix: true } }
    # will description yield duplicate results?
    # do we add team_roles later?

end
