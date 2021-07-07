require 'pry'

def get_first_name_of_season_winner(data, season)
  
  data.each do |season_num, array_of_hashes|
    
    array_of_hashes.each_with_index do |contestant_hash, index|
     
      contestant_hash.each do |attribute, attribute_value|
          
          if season_num == season && attribute_value == "Winner"
            return data[season_num][index]["name"].split.first
          end

      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, array_of_hashes|
    
    array_of_hashes.each_with_index do |contestant_hash, index|
     
      contestant_hash.each do |attribute, attribute_value|
          
          if attribute_value == occupation
            return data[season_num][index]["name"]
          end

      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  
  data.each do |season_num, array_of_hashes|
    
    array_of_hashes.each_with_index do |contestant_hash, index|
     
      contestant_hash.each do |attribute, attribute_value|
          
          if attribute_value == hometown
            counter += 1
          end

      end
    end
  end
  
  return counter
end

def get_occupation(data, hometown)
  data.each do |season_num, array_of_hashes|
    
    array_of_hashes.each_with_index do |contestant_hash, index|
     
      contestant_hash.each do |attribute, attribute_value|
          
          if hometown == attribute_value
            return data[season_num][index]["occupation"]
          end

      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  total_age = 0
  
  data.each do |season_num, array_of_hashes|
    
    array_of_hashes.each_with_index do |contestant_hash, index|
     
      contestant_hash.each do |attribute, attribute_value|

        if attribute == "age" && season_num == season
          total_age += attribute_value.to_f
          counter += 1 
        end 
        
      end
    end
  end
  
  return (total_age / counter).round
end
