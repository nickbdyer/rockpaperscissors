require 'player'

describe "Player" do

  let(:player)     { Player.new                       }
  let(:rock_class) { double :rock_class, :new => rock }
  let(:rock)       { double :rock                     }

  it "should be able to make a selection" do
    player.make_selection(rock_class)
    expect(player.selection).to eq rock
  end


end