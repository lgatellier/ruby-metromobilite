require 'json'

module Metromobilite
    module Model
        class Time
            # Class representing time info at a stop for a single route

            # Instantiates a new Time object from received JSON data
            # :call-seq:
            #   Time.new(jsonObj)
            #
            # +jsonData_Hash+::
            #   The Time JSON hash object received from the API
            def initialize(jsonData)
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
            end
            
            attr_reader :stopId
            attr_reader :stopName
            attr_reader :scheduledArrival
            attr_reader :scheduledDeparture
            attr_reader :realtimeArrival
            attr_reader :realtimeDeparture
            attr_reader :arrivalDelay
            attr_reader :departureDelay
            attr_reader :timepoint
            attr_reader :realtime
            attr_reader :serviceDay
            attr_reader :tripId

            def to_json(opts = nil)
                hash = {}
                instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
                hash.to_json
            end
        end
    end
end
