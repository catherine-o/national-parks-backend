require 'rest-client'
require 'json'

Memoir.destroy_all
Bucketlist.destroy_all
Park.destroy_all
User.destroy_all

NPS_KEY = ENV['nps_api_key']

park_base_url1 = ("https://developer.nps.gov/api/v1/parks?limit=250&api_key=" + NPS_KEY)

park_results1 = RestClient.get(park_base_url1)
park_results_array1 = JSON.parse(park_results1)['data']
park_results_array1.each do |park|
    Park.create(
        name: CGI.unescapeHTML(park['name']),
        designation: park['designation'],
        states: park['states'],
        latLong: park['latLong'],
        description: park['description'],
        weatherInfo: park['weatherInfo'],
        url: park['url']
    )
end


park_base_url2 = ("https://developer.nps.gov/api/v1/parks?limit=250&start=251&api_key=" + NPS_KEY)

park_results2 = RestClient.get(park_base_url2)
park_results_array2 = JSON.parse(park_results2)['data']
park_results_array2.each do |park|
    Park.create(
        name: CGI.unescapeHTML(park['name']),
        designation: park['designation'],
        states: park['states'],
        latLong: park['latLong'],
        description: park['description'],
        weatherInfo: park['weatherInfo'],
        url: park['url']
    )
end

user1 = User.create(username: 'cat', name: 'cat', password: 'test')

Bucketlist.create(user: user1, park_id: 402)
Bucketlist.create(user: user1, park_id: 82)
Bucketlist.create(user: user1, park_id: 240)

Memoir.create(user: user1, park_id: 181)
Memoir.create(user: user1, park_id: 321)
Memoir.create(user: user1, park_id: 49)
