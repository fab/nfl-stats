# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sf = Team.create(name: '49ers', city: 'San Francisco', color_scheme: ['red', 'gold'])

stat1  = Stat.create(title: 'Total Touchdowns Scored',      role: 'offense')
stat2  = Stat.create(title: 'Passing Touchdowns Scored',    role: 'offense')
stat3  = Stat.create(title: 'Rushing Touchdowns Scored',    role: 'offense')
stat4  = Stat.create(title: 'Total Points Scored',          role: 'offense')
stat5  = Stat.create(title: 'Defensive Touchdowns Allowed', role: 'offense')

stat6  = Stat.create(title: 'Total Touchdowns Allowed',     role: 'defense')
stat7  = Stat.create(title: 'Passing Touchdowns Allowed',   role: 'defense')
stat8  = Stat.create(title: 'Rushing Touchdowns Allowed',   role: 'defense')
stat9  = Stat.create(title: 'Total Points Allowed',         role: 'defense')
stat10 = Stat.create(title: 'Defensive Touchdowns Scored',  role: 'defense')

stat11 = Stat.create(title: 'Return Touchdowns Scored',     role: 'special teams')
stat12 = Stat.create(title: 'Return Touchdowns Allowed',    role: 'special teams')

team_stat1  = TeamStat.create(team: sf, stat: stat1,  value: 33,  rank: 22)
team_stat2  = TeamStat.create(team: sf, stat: stat2,  value: 20,  rank: 22)
team_stat3  = TeamStat.create(team: sf, stat: stat3,  value: 10,  rank: 21)
team_stat4  = TeamStat.create(team: sf, stat: stat4,  value: 306, rank: 20)
team_stat5  = TeamStat.create(team: sf, stat: stat5,  value: 3,   rank: 20)

team_stat6  = TeamStat.create(team: sf, stat: stat6,  value: 40,  rank: 17)
team_stat7  = TeamStat.create(team: sf, stat: stat7,  value: 29,  rank: 25)
team_stat8  = TeamStat.create(team: sf, stat: stat8,  value: 7,   rank: 4)
team_stat9  = TeamStat.create(team: sf, stat: stat9,  value: 340, rank: 5)
team_stat10 = TeamStat.create(team: sf, stat: stat10, value: 3,   rank: 6)

team_stat11 = TeamStat.create(team: sf, stat: stat11, value: 0,   rank: 13)
team_stat12 = TeamStat.create(team: sf, stat: stat12, value: 1,   rank: 16)
