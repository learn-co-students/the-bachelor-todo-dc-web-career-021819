def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do | contestant_hash |
        if contestant_hash.has_value?("Winner")
          return contestant_hash.values[0].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
    contestants.each do | contestant_hash |
      if contestant_hash.has_value?(occupation)
        return contestant_hash.values[0]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_number, contestants|
    contestants.each do | contestant_hash |
      if contestant_hash.has_value?(hometown)
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
    contestants.each do | contestant_hash |
      if contestant_hash.has_value?(hometown)
        return contestant_hash.values[3]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = 0
  counter = 0
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do | contestant_hash |
        average_age = average_age + contestant_hash.values[1].to_i
        counter += 1
      end
    end
  end
  return (average_age.to_f/counter.to_f).round
end
