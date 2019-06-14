class Team < ApplicationRecord
  belongs_to :site
  belongs_to :manager
end
