require 'json'

module Metromobilite
    module Model
        class Pattern

            # Initializes a new Metromobilite::Pattern object
            #
            # +jsonData_Hash+::
            #   The JSON data received and parsed as a Hash
            def initialize(jsonData)

            @id = jsonData['id']
            @desc = jsonData['desc']
            @dir = jsonData['dir']
            @shortDesc = jsonData['shortDesc']
            end
            
            attr_reader :id
            attr_reader :desc
            attr_reader :dir
            attr_reader :shortDesc

            def to_json(opts = nil)
                hash = {}
                instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
                hash.to_json
            end
        end
    end
end