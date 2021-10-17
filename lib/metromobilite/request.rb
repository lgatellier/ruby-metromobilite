require 'httparty'
require 'json'

module Metromobilite
    module Request
        API_URI = 'https://data.mobilites-m.fr/api'
        HEADERS = { 'Origin' => 'rubygems.org' }

        def self.get(reqUri)
            puts 'Calling GET on ' + API_URI + reqUri
            httpResult = HTTParty.get(API_URI + reqUri, headers: HEADERS)
            JSON.parse(httpResult.body)
        end
    end
end
