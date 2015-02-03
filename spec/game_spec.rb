require 'spec_helper'
require 'game'

describe "Game" do

  let(:game)     { Game.new                        }
  let(:player)   { double :player, selection: rock }
  let(:ai)       { double :ai, selection: scissors }
  let(:rock)     { double :rock, won?: true, :class => Rock }
  let(:scissors) { double :scissors, won?: false, :class => Scissors }

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

  it "should know if it has two players" do
    player3 = double :player
    expect{game.add_player(player3)}.to raise_error ("There are already two players.")
  end

end
