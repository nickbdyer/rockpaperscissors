require 'scissors'

describe "Scissors" do

  let(:scissors) { Scissors.new    }
  let(:paper)  { double :paper, :class => Paper }

  it "should have the class Scissors" do
    expect(scissors.class).to eq Scissors
  end

  it "should know what class it beats" do
    expect(scissors.won?(paper)).to be true
  end

end