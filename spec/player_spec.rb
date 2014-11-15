require 'player'

describe "Player" do

  it "should be able to make a selection" do
    player = Player.new
    rock = double :rock
    player.make_selection(rock)
    expect(player.selection).to eq rock
  end


end