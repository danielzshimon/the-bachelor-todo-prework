def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |correct_contestant|
      if correct_contestant["occupation"] == occupation
        return correct_contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season, contestants|
    contestants.each do |correct_contestant|
      if correct_contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |correct_contestant|
      if correct_contestant["hometown"] == hometown
        return correct_contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  contestants = 0
  data[season].each do |contestant|
    age_total += contestant["age"].to_i
    contestants += 1
  end
  (age_total / contestants.to_f).round
end
