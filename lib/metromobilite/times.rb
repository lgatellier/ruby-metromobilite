require 'metromobilite/request'
require 'metromobilite/model/pattern'
require 'metromobilite/model/time'
require 'metromobilite/model/stop'
require 'json'

module Metromobilite
    module Times
        RECORDS_URI = '/ficheHoraires/json'
        LIVE_URI = '/routers/default/index/stops/%s/stoptimes'
        
        # Reads the next stop times at a stop, eventually for a given route
        # Returns an array of Metromobilite::Model::Stop with their associated stop times
        #
        # +stopId_string+::
        #   the stop id
        #
        def self.readStop(stopId)
            uri = LIVE_URI % stopId.to_s
            jsonData = Metromobilite::Request.get(uri)
            res = []
            jsonData.each do |item|
                pattern = Metromobilite::Model::Pattern.new(item['pattern'])
                times = []
                item['times'].each do |timeJson|
                    times.push(Metromobilite::Model::Time.new timeJson)
                end
                res.push(Metromobilite::Model::Stop.new pattern, times)
            end

            return res
        end
    end
end
