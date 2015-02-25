# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sf = Team.create(name: '49ers', city: 'San Francisco', abbr: 'SF', color_scheme: ['#AF1E2C', '#E6BE8A', '#000000'])

stat1  = Stat.create(title: 'Total Touchdowns Scored',      role: 'Offense')
stat2  = Stat.create(title: 'Passing Touchdowns Scored',    role: 'Offense')
stat3  = Stat.create(title: 'Rushing Touchdowns Scored',    role: 'Offense')
stat4  = Stat.create(title: 'Total Points Scored',          role: 'Offense')
stat5  = Stat.create(title: 'Total Yards Gained',           role: 'Offense')

stat7  = Stat.create(title: 'Total Touchdowns Allowed',     role: 'Defense')
stat8  = Stat.create(title: 'Passing Touchdowns Allowed',   role: 'Defense')
stat9  = Stat.create(title: 'Rushing Touchdowns Allowed',   role: 'Defense')
stat10 = Stat.create(title: 'Total Points Allowed',         role: 'Defense')
stat11 = Stat.create(title: 'Total Yards Allowed',          role: 'Defense')

stat6  = Stat.create(title: 'Defensive Touchdowns Allowed', role: 'Offense')
stat12 = Stat.create(title: 'Defensive Touchdowns Scored',  role: 'Defense')
stat13 = Stat.create(title: 'Return Touchdowns Scored',     role: 'Special Teams')
stat14 = Stat.create(title: 'Return Touchdowns Allowed',    role: 'Special Teams')
stat15 = Stat.create(title: 'Field Goals Scored',           role: 'Special Teams')

team_stat1  = TeamStat.create(team: Team.all, stat: stat1,  value: 33,   rank: 22)
team_stat2  = TeamStat.create(team: Team.all, stat: stat2,  value: 20,   rank: 22)
team_stat3  = TeamStat.create(team: Team.all, stat: stat3,  value: 10,   rank: 21)
team_stat4  = TeamStat.create(team: Team.all, stat: stat4,  value: 306,  rank: 20)
team_stat5  = TeamStat.create(team: Team.all, stat: stat5,  value: 5239, rank: 20)
team_stat6  = TeamStat.create(team: Team.all, stat: stat6,  value: 3,    rank: 20)

team_stat7  = TeamStat.create(team: Team.all, stat: stat7,  value: 40,   rank: 17)
team_stat8  = TeamStat.create(team: Team.all, stat: stat8,  value: 29,   rank: 25)
team_stat9  = TeamStat.create(team: Team.all, stat: stat9,  value: 7,    rank: 4 )
team_stat10 = TeamStat.create(team: Team.all, stat: stat10, value: 340,  rank: 5 )
team_stat11 = TeamStat.create(team: Team.all, stat: stat11, value: 5143, rank: 5 )
team_stat12 = TeamStat.create(team: Team.all, stat: stat12, value: 3,    rank: 6 )

team_stat13 = TeamStat.create(team: Team.all, stat: stat13, value: 0,    rank: 13)
team_stat14 = TeamStat.create(team: Team.all, stat: stat14, value: 1,    rank: 16)
team_stat15 = TeamStat.create(team: Team.all, stat: stat15, value: 25,   rank: 17)

team1  = Team.create(name: 'Patriots',   city: 'New England',  abbr: 'NE',  color_scheme: ['#0D254C', '#D6D6D6', '#C80815'])
team2  = Team.create(name: 'Bills',      city: 'Buffalo',      abbr: 'BUF', color_scheme: ['#00338D', '#C60C30', '#FFFFFF'])
team3  = Team.create(name: 'Dolphins',   city: 'Miami',        abbr: 'MIA', color_scheme: ['#008D97', '#F5811F', '#FFFFFF'])
team4  = Team.create(name: 'Jets',       city: 'New York',     abbr: 'NYJ', color_scheme: ['#0C371D', '#FFFFFF', '#000000'])

team5  = Team.create(name: 'Steelers',   city: 'Pittsburg',    abbr: 'PIT', color_scheme: ['#000000', '#F2C800', '#FFFFFF'])
team6  = Team.create(name: 'Bengals',    city: 'Cincinnati',   abbr: 'CIN', color_scheme: ['#000000', '#FB4F14', '#FFFFFF'])
team7  = Team.create(name: 'Ravens',     city: 'Baltimore',    abbr: 'BAL', color_scheme: ['#280353', '#000000', '#D0B240'])
team8  = Team.create(name: 'Browns',     city: 'Cleveland',    abbr: 'CLE', color_scheme: ['#26201E', '#E34912', '#FFFFFF'])

team9  = Team.create(name: 'Colts',      city: 'Indianapolis', abbr: 'IND', color_scheme: ['#003B7B', '#FFFFFF', '#000000'])
team10 = Team.create(name: 'Texans',     city: 'Houston',      abbr: 'HOU', color_scheme: ['#02253A', '#B31B34', '#FFFFFF'])
team11 = Team.create(name: 'Jaquars',    city: 'Jacksonville', abbr: 'JAC', color_scheme: ['#D0B239', '#007198', '#000000'])
team12 = Team.create(name: 'Titans',     city: 'Tennessee',    abbr: 'TEN', color_scheme: ['#648FCC', '#FFFFFF', '#000000'])

team13 = Team.create(name: 'Broncos',    city: 'Denver',       abbr: 'DEN', color_scheme: ['#FB4F14', '#002244', '#FFFFFF'])
team14 = Team.create(name: 'Chiefs',     city: 'Kansas City',  abbr: 'KC',  color_scheme: ['#B20032', '#FFFFFF', '#000000'])
team15 = Team.create(name: 'Chargers',   city: 'San Diego',    abbr: 'SD',  color_scheme: ['#08214A', '#5B92E5', '#EEC607'])
team16 = Team.create(name: 'Raiders',    city: 'Oakland',      abbr: 'OAK', color_scheme: ['#C4C8CB', '#000000', '#FFFFFF'])

team17 = Team.create(name: 'Cowboys',    city: 'Dallas',       abbr: 'DAL', color_scheme: ['#002244', '#8C8B8A', '#FFFFFF'])
team18 = Team.create(name: 'Eagles',     city: 'Philadelphia', abbr: 'PHI', color_scheme: ['#003B48', '#000000', '#708090'])
team19 = Team.create(name: 'Giants',     city: 'New York',     abbr: 'NYG', color_scheme: ['#192F6B', '#FFFFFF', '#CA001A'])
team20 = Team.create(name: 'Redskins',   city: 'Washington',   abbr: 'WAS', color_scheme: ['#773141', '#FFB612', '#FFFFFF'])

team21 = Team.create(name: 'Packers',    city: 'Green Bay',    abbr: 'GB',  color_scheme: ['#203731', '#FFB612', '#FFFFFF'])
team22 = Team.create(name: 'Lions',      city: 'Detroit',      abbr: 'DET', color_scheme: ['#006DB0', '#C5C7CF', '#000000'])
team23 = Team.create(name: 'Vikings',    city: 'Minnesota',    abbr: 'MIN', color_scheme: ['#4F2682', '#FFC52F', '#FFFFFF'])
team24 = Team.create(name: 'Bears',      city: 'Chicago',      abbr: 'CHI', color_scheme: ['#03202F', '#DD4814', '#FFFFFF'])

team25 = Team.create(name: 'Panthers',   city: 'Carolina',     abbr: 'CAR', color_scheme: ['#000000', '#0088CE', '#A5ACAF'])
team26 = Team.create(name: 'Saints',     city: 'New Orleans',  abbr: 'NO',  color_scheme: ['#D2B887', '#000000', '#FFFFFF'])
team27 = Team.create(name: 'Falcons',    city: 'Atlanta',      abbr: 'ATL', color_scheme: ['#BD0D18', '#000000', '#DCE0E5'])
team28 = Team.create(name: 'Buccaneers', city: 'Tampa Bay',    abbr: 'TB',  color_scheme: ['#D60A0B', '#89765F', '#000000'])

team29 = Team.create(name: 'Seahawks',   city: 'Seattle',      abbr: 'SEA', color_scheme: ['#002244', '#69BE28', '#DCDCDC'])
team30 = Team.create(name: 'Cardinals',  city: 'Arizona',      abbr: 'ARI', color_scheme: ['#870619', '#FFFFFF', '#000000'])
team31 = Team.create(name: 'Rams',       city: 'St Louis',     abbr: 'STL', color_scheme: ['#13264B', '#C9AF74', '#FFFFFF'])


### TEMPORARILY USE SF'S STATS FOR EACH TEAM ###

Team.all.each do |team|

  TeamStat.create(team: team, stat: stat1,  value: 33,   rank: rand(1..32))
  TeamStat.create(team: team, stat: stat2,  value: 20,   rank: rand(1..32))
  TeamStat.create(team: team, stat: stat3,  value: 10,   rank: rand(1..32))
  TeamStat.create(team: team, stat: stat4,  value: 306,  rank: rand(1..32))
  TeamStat.create(team: team, stat: stat5,  value: 5239, rank: rand(1..32))

  TeamStat.create(team: team, stat: stat7,  value: 40,   rank: rand(1..32))
  TeamStat.create(team: team, stat: stat8,  value: 29,   rank: rand(1..32))
  TeamStat.create(team: team, stat: stat9,  value: 7,    rank: rand(1..32))
  TeamStat.create(team: team, stat: stat10, value: 340,  rank: rand(1..32))
  TeamStat.create(team: team, stat: stat11, value: 5143, rank: rand(1..32))

  TeamStat.create(team: team, stat: stat6,  value: 3,    rank: rand(1..32))
  TeamStat.create(team: team, stat: stat12, value: 3,    rank: rand(1..32))
  TeamStat.create(team: team, stat: stat13, value: 0,    rank: rand(1..32))
  TeamStat.create(team: team, stat: stat14, value: 1,    rank: rand(1..32))
  TeamStat.create(team: team, stat: stat15, value: 25,   rank: rand(1..32))

end
