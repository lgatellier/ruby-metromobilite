RSpec.describe Metromobilite::Times do

  it "properly retrieves Condorcet stop times" do
    condorcet = Metromobilite::Times::readStop 'SEM:3208'
    expect(condorcet).to be_an(Array)
  end
end
