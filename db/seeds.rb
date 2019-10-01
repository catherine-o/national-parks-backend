require 'rest-client'
require 'json'

Park.destroy_all
User.destroy_all

NPS_KEY = ENV['nps_api_key']

park_base_url = "https://developer.nps.gov/api/v1/parks?&api_key=" + NPS_KEY

park_results = RestClient.get(park_base_url)
park_results_array = JSON.parse(park_results)['data']
park_results_array.each do |park|
    Park.create(
        name: park['name'],
        designation: park['designation'],
        states: park['states'],
        latLong: park['latLong'],
        description: park['description'],
        weatherInfo: park['weatherInfo'],
        url: park['url']
    )
end