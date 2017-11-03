require 'httparty'
response = HTTParty.get("https://myttc.ca/finch_station.json")
json_data = JSON.parse(response.body)