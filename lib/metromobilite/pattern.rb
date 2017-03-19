require 'json'

module Metromobilite
  class Pattern
    attr_reader :id, :desc, :dir, :shortDesc, :times
    attr_writer :times
    
    # Initializes a new Metromobilite::Pattern object
    #
    # @param jsonData [Struct]
    # @return [Metromobilite::Pattern]
    def initialize(jsonData, times=Nil)
      
      @id = jsonData['id']
      @desc = jsonData['desc']
      @dir = jsonData['dir']
      @shortDesc = jsonData['shortDesc']
      @times = times
    end
    
  end
end