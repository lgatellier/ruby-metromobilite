require 'metromobilite/request'
require 'metromobilite/pattern'
require 'json'

module Metromobilite
  module Times
    RECORDS_URI = '/ficheHoraires/json'
    LIVE_URI = '/routers/default/index/%s/%s/stoptimes'
    ROUTE_PARAM = '?route='
    
    # Reads the next stop times at a stop, eventually for a given route
    # @param stopId the stop id
    # @return an array of [Metromobilite::Pattern] with their associated stop times
    def self.readStop(stopId, route='')
      uri = LIVE_URI % [ 'clusters', stopId.to_s ]
      unless route.nil? || route.strip.empty?
        uri = uri + ROUTE_PARAM + route
      end
      jsonData = Metromobilite::Request.get(uri)
      res = []
      for item in jsonData
        times = []
        pattern = Metromobilite::Pattern.new(item['pattern'], times)
        for time in item['times']
          times.push(Metromobilite::Time.new(time, pattern))
        end
        res.push(pattern)
      end
      res
    end
  end
  
  class Time
    attr_reader :stopId, :stopName, :scheduledArrival, :scheduledDeparture, :realtimeArrival, :realtimeDeparture, :arrivalDelay, :departureDelay, :timepoint, :realtime, :serviceDay, :tripId
    attr_accessor :pattern
    
    def initialize(jsonData, pattern=Nil)
      @stopId = jsonData['stopId']
      @stopName = jsonData['stopName']
      @scheduledArrival = jsonData['scheduledArrival']
      @scheduledDeparture = jsonData['scheduledDeparture']
      @realtimeArrival = jsonData['realtimeArrival']
      @realtimeDeparture = jsonData['realtimeDeparture']
      @arrivalDelay = jsonData['arrivalDelay']
      @departureDelay = jsonData['departureDelay']
      @timepoint = jsonData['timepoint']
      @realtime = jsonData['realtime']
      @serviceDay = jsonData['serviceDay']
      @tripId = jsonData['tripId']
      
      @pattern = pattern
    end
  end
end
