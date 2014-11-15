require 'rock'

describe "Rock" do

  it "should have the class Rock" do
    rock = Rock.new
    expect(rock.class).to eq Rock
  end

end