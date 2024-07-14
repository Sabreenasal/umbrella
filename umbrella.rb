pp "Howdy"

pp "Where are you located?"

#user_location = gets.chomp

user_location = "Chicago"

pp user_location

maps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + user_location + "Merchandise%20Mart%20Chicago&key=" + ENV.fetch("GMAPS_KEY")

require "http"

resp = HTTP.get(maps_url)

raw_response = resp.to_s

require "json"

parsed_response = JSON.parse(raw_response)

results = parsed_response.fetch("results")

first_result = results.at(0)

geo = first_result.fetch("geometry")

loc = geo.fetch("location")

latitude = loc.fetch("lat")
longitude = loc.fetch("lng")

puts "Your coordinates are #{latitude}, #{longitude}."

pirate_weather_key = ENV.fetch("PIRATE_WEATHER_KEY")

pirate_weather_url = "https://api.pirateweather.net/forecast/#{pirate_weather_key}/#{longitude}/#{latitude}"






#pp resp



#Take the lng/lat
#Asseble correct url for Pirate Weather API
#Get it, parse it, and dig out the current temp
  
