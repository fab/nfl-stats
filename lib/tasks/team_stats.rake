require 'json'
require 'open-uri'
require 'csv'

desc "Fetches team_stats from an external API and creates a CSV of the data"
task :fetch_team_stats_for_csv do

  teams = ['ARI', 'ATL', 'BAL', 'BUF', 'CAR', 'CHI', 'CIN', 'CLE', 'DAL', 'DEN', 'DET', 'GB', 'HOU', 'IND', 'JAC', 'KC', 'MIA', 'MIN', 'NE', 'NO', 'NYG', 'NYJ', 'OAK', 'PHI', 'PIT', 'SD', 'SEA', 'SF', 'STL', 'TB', 'TEN', 'WAS']

  CSV.open('team_stats.csv', "wb") do |csv|
    csv << CSV.read('data_headers.csv').first

    teams.each do |team|
      source_url = "http://feeds.nfl.com/feeds-rs/teamSeasonQuickStats/#{team}/2014/REG.json"
      response = JSON.load(open(source_url))
      offense_stats = response['teamSeasonStats'][0]['teamStatDetail']
      defense_stats = response['teamSeasonStats'][0]['opponentStatDetail']

      row = []

      row << team

      row << offense_stats['touchdownsTotal']
      row << offense_stats['touchdownsPassing']
      row << offense_stats['touchdownsRushing']
      row << offense_stats['totalPointsScored']
      row << offense_stats['offensiveYardsTotal']

      row << defense_stats['touchdownsTotal']
      row << defense_stats['touchdownsPassing']
      row << defense_stats['touchdownsRushing']
      row << defense_stats['totalPointsScored']
      row << defense_stats['offensiveYardsTotal']

      row << offense_stats['touchdownsDefensive']
      row << defense_stats['touchdownsDefensive']
      row << offense_stats['touchdownsReturned']
      row << defense_stats['touchdownsReturned']
      row << offense_stats['fieldGoalMade']

      csv << row
    end
  end

  puts "CSV of team stats generated."
end

desc "Parse a CSV of team_stats to create respective entries in the database"
task :parse_team_stats, [:filename] => :environment do |t, args|
  CSV.foreach(args.filename, headers: true, header_converters: :symbol) do |row|
    team = Team.find_by(abbr: row[:team])

    i = 1
    row.each do |row_entry|
      next if row_entry[0] == :team
      stat = Stat.find(i)
      TeamStat.create(team: team, stat: stat,  value: row_entry[1].to_i,   rank: rand(1..32))
      i += 1
    end
  end

  puts "Team stats imported into database."
end

desc "Calculate and update ranks for all team_stats in the database"
task :calculate_ranks => :environment do
  stats = Stat.all
  stats.each do |stat|
    puts "Stat name: #{stat.title}"
    puts
    team_stats = TeamStat.where(stat: stat).order('value DESC')

    current_rank = 1

    team_stats.each_with_index do |ts, i|

      if i == 0
        ts.update_attribute(:rank, current_rank)
        current_rank += 1
        puts "#{ts.team.name}: #{ts.value} with rank #{ts.rank}"
        next
      end

      current = ts
      previous = team_stats[i - 1]

      if current.value < previous.value
        current.update_attribute(:rank, current_rank)
      else
        current.update_attribute(:rank, previous.rank)
      end

      current_rank += 1

      puts "#{ts.team.name}: #{ts.value} with rank #{ts.rank}"
    end

    puts
    puts "__________________________________________"
    puts
  end

  puts "Ranks updated for all team stats in database."
end
