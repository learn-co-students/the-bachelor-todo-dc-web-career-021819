def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data.each do | season_key, season_data |
    if season_key == season 
      season_data.each do | contestant |
        if contestant["status"] == "Winner"
          winner_name = contestant["name"].split(" ")[0]
        end 
      end 
    end 
  end 
  winner_name
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do | season_key, season_data |
    season_data.each do | contestant |
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
      end 
    end 
  end 
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do | season_key, season_data |
    season_data.each do | contestant |
      if contestant["hometown"] == hometown
        hometown_count += 1
      end 
    end 
  end 
  hometown_count
end

def get_occupation(data, hometown)
  contestant_occupation = nil
  data.each do | season_key, season_data |
    season_data.each do | contestant |
      if contestant["hometown"] == hometown && contestant_occupation == nil
        contestant_occupation = contestant["occupation"]
      end 
    end 
  end 
  contestant_occupation
end

def get_average_age_for_season(data, season)
  average_age = 0
  number_of_contestants = 0
  data.each do | season_key, season_data |
    if season_key == season 
      season_data.each do | contestant |
        average_age += contestant["age"].to_f
        number_of_contestants += 1 
      end 
    end 
  end 
  (average_age / number_of_contestants).round 
end
