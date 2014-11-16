require 'game'

describe "Game" do

  let(:game)     { Game.new                        }
  let(:player)   { double :player, selection: rock }
  let(:ai)       { double :ai, selection: scissors }
  let(:rock)     { double :rock, won?: true        }
  let(:scissors) { double :scissors, won?: false   }

  before(:each) do
    game.add_player(player)
    game.add_player(ai)
  end


  it "should allow two players to be added to the game" do
    expect(game.players).to eq [player, ai]
  end

  it "should compute the winner" do
    expect(game.evaluate).to be player
  end

  it "should return draw if both players choose the same" do
    game = Game.new
    player = double :player, selection: rock
    game.add_player(player)
    game.add_player(player)
    expect(game.evaluate).to eq "Draw"
  end

end