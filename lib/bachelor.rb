def get_first_name_of_season_winner(data, season)
  # code here
  s = data[season]
  n = ""
  s.each do |e|
    if e["status"] = "Winner"
      n = e["name"]
      break
    end
  end
  first = ""
  c = 0
  while c < n.size
    break if n[c] == " "
    first += n[c]
    c+=1
  end
  first


end

def get_contestant_name(data, occupation)
  # code here
  n = ""
  data.each do |k, contestants|
    contestants.each do |c|
      if c["occupation"] == occupation
        n = c["name"]
        break
      end
    end

  end
  n

end

def count_contestants_by_hometown(data, hometown)
  # code here

  count = 0
  data.each do |k, contestants|
    contestants.each do |c|
      if c["hometown"] == hometown
      count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occ = ""

  data.each do |k, contestants|
    contestants.each do |c|
      if c["hometown"] == hometown
        occ = c["occupation"]
        break
      end
    end
  end
  occ

end

def get_average_age_for_season(data, season)
  # code here

  s = data[season]
  av = 0
  
  s.each do |e|
    av += e["age"].to_f
  end

  av = (av / s.size).round

  av
end
