# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sf = Team.create(name: '49ers', city: 'San Francisco', color_scheme: ['red', 'gold'])

stat1  = Stat.create(title: 'Total Touchdowns Scored',      role: 'Offense')
stat2  = Stat.create(title: 'Passing Touchdowns Scored',    role: 'Offense')
stat3  = Stat.create(title: 'Rushing Touchdowns Scored',    role: 'Offense')
stat4  = Stat.create(title: 'Total Points Scored',          role: 'Offense')
stat5  = Stat.create(title: 'Defensive Touchdowns Allowed', role: 'Offense')

stat6  = Stat.create(title: 'Total Touchdowns Allowed',     role: 'Defense')
stat7  = Stat.create(title: 'Passing Touchdowns Allowed',   role: 'Defense')
stat8  = Stat.create(title: 'Rushing Touchdowns Allowed',   role: 'Defense')
stat9  = Stat.create(title: 'Total Points Allowed',         role: 'Defense')
stat10 = Stat.create(title: 'Defensive Touchdowns Scored',  role: 'Defense')

stat11 = Stat.create(title: 'Return Touchdowns Scored',     role: 'Special Teams')
stat12 = Stat.create(title: 'Return Touchdowns Allowed',    role: 'Special Teams')

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


### SEED JUST THE TEAM NAMES FOR THE REST OF THE NFL ###

team1  = Team.create(name: 'Patriots',   city: 'New England')
team2  = Team.create(name: 'Bills',      city: 'Buffalo')
team3  = Team.create(name: 'Dolphins',   city: 'Miami')
team4  = Team.create(name: 'Jets',       city: 'New York')

team5  = Team.create(name: 'Steelers',   city: 'Pittsburg')
team6  = Team.create(name: 'Bengals',    city: 'Cincinnati')
team7  = Team.create(name: 'Ravens',     city: 'Baltimore')
team8  = Team.create(name: 'Browns',     city: 'Cleveland')

team9  = Team.create(name: 'Colts',      city: 'Indianapolis')
team10 = Team.create(name: 'Texans',     city: 'Houston')
team11 = Team.create(name: 'Jaquars',    city: 'Jacksonville')
team12 = Team.create(name: 'Titans',     city: 'Tennessee')

team13 = Team.create(name: 'Broncos',    city: 'Denver')
team14 = Team.create(name: 'Chiefs',     city: 'Kansas City')
team15 = Team.create(name: 'Chargers',   city: 'San Diego')
team16 = Team.create(name: 'Raiders',    city: 'Oakland')

team17 = Team.create(name: 'Cowboys',    city: 'Dallas')
team18 = Team.create(name: 'Eagles',     city: 'Philadelphia')
team19 = Team.create(name: 'Giants',     city: 'New York')
team20 = Team.create(name: 'Redskins',   city: 'Washington')

team21 = Team.create(name: 'Packers',    city: 'Green Bay')
team22 = Team.create(name: 'Lions',      city: 'Detroit')
team23 = Team.create(name: 'Vikings',    city: 'Minnesota')
team24 = Team.create(name: 'Bears',      city: 'Chicago')

team25 = Team.create(name: 'Panthers',   city: 'Carolina')
team26 = Team.create(name: 'Saints',     city: 'New Orleans')
team27 = Team.create(name: 'Falcons',    city: 'Atlanta')
team28 = Team.create(name: 'Buccaneers', city: 'Tampa Bay')

team29 = Team.create(name: 'Seattle',    city: 'Seahawks')
team30 = Team.create(name: 'Cardinals',  city: 'Arizona')
team31 = Team.create(name: 'Rams',       city: 'St Louis')
