class Stat < ActiveRecord::Base
  has_many :team_stats
  has_many :teams, through: :team_stats
end
