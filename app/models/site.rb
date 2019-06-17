class Site < ApplicationRecord
  has_many :users
  has_many :teams
  validates :country, presence: true
  validates :city, presence: true
end
