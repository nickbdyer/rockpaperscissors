require 'rock'

describe "Rock" do

  let(:rock) { Rock.new    }
  let(:scissors)  { double :scissors, :class => Scissors }

  it "should have the class Rock" do
    expect(rock.class).to eq Rock
  end


  it "should know what class it beats" do
    expect(rock.won?(scissors)).to be true
  end


end