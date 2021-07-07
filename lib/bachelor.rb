require 'pry'

def get_contestants(data, season)
  # returns a hash with all the season data
  output = nil
  data.each do |season_key, data|
    if season_key == season
      output = data
    end
  end
  output
end

def first_name(name)
  name_a = name.split(" ")
  name_a[0]
end

def get_first_name_of_season_winner(data, season)
  contestants = get_contestants(data, season)
  contestants.each do |contestant|
    if contestant["status"] == "Winner"
      return first_name(contestant["name"])
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end 
    end 
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1 
      end 
    end 
  end
  count
end

def get_occupation(data, hometown)
  # code here
    data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end 
    end 
  end
end

def get_average_age_for_season(data, season)
  contestants = get_contestants(data, season)
  ages = []
  contestants.each do |contestant|
    ages << contestant["age"].to_f
  end
  average = ages.inject(0, :+) / ages.length
  average.round
end
