class Team < ActiveRecord::Base
  has_many :team_stats
  has_many :stats, through: :team_statss
end
