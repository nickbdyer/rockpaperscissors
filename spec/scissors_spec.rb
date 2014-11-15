require 'scissors'

describe "Scissors" do

  it "should have the class Scissors" do
    scissors = Scissors.new
    expect(scissors.class).to eq Scissors
  end

end