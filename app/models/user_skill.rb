class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  # belongs_to :skill_category, through: :skill # to call the category of a user's skill

  validates :self_assessment, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :manager_assessment, inclusion: { in: [nil, 1, 2, 3, 4, 5] }
  # validates :self_comment
  # validates :manager_comment
  # validates :experience
end
