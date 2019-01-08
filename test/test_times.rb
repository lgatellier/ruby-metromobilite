require 'test/unit'
require 'metromobilite/times' 
require 'json'

class TestTimes < Test::Unit::TestCase

    def test_simple_times_request
        condorcet = Metromobilite::Times::readStop 'SEM:3208'
        assert_instance_of Array, condorcet
        puts JSON.pretty_generate condorcet
    end
end