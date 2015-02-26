class Team < ActiveRecord::Base
  has_many :team_stats, -> { order 'team_stats.id' }
  has_many :stats, through: :team_stats
end
