require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  
  holiday_hash[:summer][:fourth_of_july][1]# given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value << supply 
  
  end 
end 
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |key, value|
    value << supply
 
  end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  #above on line 48 we use season instead of :season and holiday_name instead of :holiday_name because if we dont then when we use the symbol (:) it will use the season key which may or not be hash if it existed instead of using season as a placeholder. And to add a new key within a has using bracket notation. Here the placeholder holiday_name will be used as our key and it will be inserted. before setting this value equal to supply_array the value will be nil since there is no value for this new holiday_name. At the end our code is saying "hey I want this key [holiday_name] to equal this value [supply_array]."
  
  
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # here you can also append .flatten to end however you cant do that with each. In that case you would iterate over holiday_hash with .map and do |key, value|, end that and call .flatten on that end and then close the all_winter_holiday_supplies with end. ex: 
  #holiday_hash.map do |key, value|
  #value 
  #end.flatten 
  #.values()Returns a new array populated with the values from hsh. See also Hash#keys
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |event, supply|
      puts "  #{event.to_s.split("_").map { |x| x.capitalize}.join(" ") }: #{supply.join(", ")}"
      
      
      #put out the supplies 
    # the value of event will overwrite the value of value when nesting iterations, therefore you want to make sure you change the name accordingly to avoid confusion. 
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holidays|
    holidays.map do |event, supplies|
      if supplies.include?("BBQ")
        event 
      end 
    end 
  end.flatten.compact
end







