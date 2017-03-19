require 'httparty'
require 'json'

module Metromobilite
  module Request
    API_URI = 'http://data.metromobilite.fr/api'
    
    def self.get(reqUri)
      puts 'Calling GET on ' + API_URI + reqUri
      httpResult = HTTParty.get(API_URI + reqUri)
      res = JSON.parse(httpResult.body)
    end
  end
end
