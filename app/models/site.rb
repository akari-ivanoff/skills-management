class Site < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :teams, dependent: :destroy
  validates :country, presence: true
  validates :city, presence: true
end
