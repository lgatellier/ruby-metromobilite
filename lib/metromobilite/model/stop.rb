require 'json'

module Metromobilite
    module Model
        class Stop
            def initialize(pattern, times)
                @pattern = pattern
                @times = times
            end

            attr_reader :pattern
            attr_reader :times

            def to_json(opts = nil)
                hash = {}
                instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
                hash.to_json
            end
        end
    end
end
