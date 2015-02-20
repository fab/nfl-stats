class TeamStat < ActiveRecord::Base
  belongs_to :team
  belongs_to :stat
end
