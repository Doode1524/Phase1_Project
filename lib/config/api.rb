require 'net/http'
require 'open-uri'
require 'json'

class Api
    def self.base_url
     "https://api.sportsdata.io/v3"
    end

    def self.load_data
     response = RestClient.get(base_url + '/lol/stats/json/Champions?key=aacc8ac9a58640728208a410e55e38d0')
     data = JSON.parse(response.body)

        data.each do |champ_data|
            Champions.new(champ_data["Name"], champ_data["Magic"], champ_data["Defense"], champ_data["Title"], champ_data["Attack"])
        end
    end
end






































#   def get_info
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end
  
#   def cahmpion_name
#     champions = JSON.parse("class.array.collapsible")
#     champions.collect do |info|
#       info[name]
#     end
#   end


 